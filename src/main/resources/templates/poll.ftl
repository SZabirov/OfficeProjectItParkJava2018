<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Polls</title>
    <#include "links.ftl">
</head>
<body>
<#include "menu.ftl">
<div class="container">
    <#if poll??>
    <h1>${poll.title}</h1>
    <form action="/vote" method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <#list poll.answers as answer>
        <div class="form-group">
            <label for="answer"></label>
            <input type="radio" id="answer" name="answerId" value="${answer.id}">${answer.text}<br>
        </div>
        </#list>
        <input type="submit" value="Проголосовать" class="btn btn-default">
    </form>
    <#else>

    </#if>
</div>
</body>
</html>