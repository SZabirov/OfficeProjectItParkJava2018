<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Poll Create</title>
    <#include "links.ftl">
</head>
<body>
<#include "menu.ftl">
<div class="container">
    <h1>Добавление нового голосования</h1>
    <form action="/createpoll" method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="form-group">
            <label for="title">Заголовок:</label>
            <input type="text" id="title" name="title" class="form-control" ><br>
        </div>
        <input type="submit" value="Создать" class="btn btn-default">
    </form>

</div>
</body>
</html>