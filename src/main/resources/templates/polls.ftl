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
    <h1>Poll List</h1>
    <ol>
    <#list polls as poll>
        <li><a href="/polls/${poll.id}">${poll.title}</a></li>
        <#if currentUser.getUser().getRole() == "ADMIN">
            <form class="form-inline my-2 my-lg-0" action="/publish" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" name="pollId" value="${poll.id}"/>
                    <#if poll.getPublished()>
                        <input type="hidden" name="publish" value="false"/>
                        <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Скрыть</button>
                    <#else>
                        <input type="hidden" name="publish" value="true"/>
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Опубликовать</button>
                    </#if>
            </form>
        </#if>
    </#list>
    </ol>
</div>
</body>
</html>