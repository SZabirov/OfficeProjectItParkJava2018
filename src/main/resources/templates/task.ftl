<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task</title>
    <#include "links.ftl">
</head>
<body>
<#include "menu.ftl">
<div class="container">
    <h1>Отправьте задачу пользователю</h1>
    <form method="post" action="/user/sendtask">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="form-group">
            <label for="userId">User Id: </label>
            <input type="text" name="userId" id="userId" class="form-control"
            <#if userId??>
                   value="${userId}"
            </#if>
            ><br>
        </div>
        <div class="form-group">
            <label for="task">Task:</label>
            <input type="text" name="task" id="task" class="form-control"><br>
        </div>
        <div class="form-group">
            <input type="submit" value="Send" class="btn btn-primary">
        </div>
    </form>
</body>
</html>