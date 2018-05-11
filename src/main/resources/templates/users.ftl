<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <#include "links.ftl">
</head>
<body>
<#include "menu.ftl">
<div class="container">
<h1>User List</h1>
<table class="table">
    <tr class="thead-dark">
        <th>Id</th>
        <th>Username</th>
        <th>Role</th>
        <th></th>
    </tr>
    <#list users as user>
        <tr>
            <td> ${user.id}</td>
            <td> ${user.username}</td>
            <td> ${user.role}</td>
            <td><form class="form-inline my-2 my-lg-0" action="/user/sendtask" method="get">
            <#--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
                <input type="hidden" name="userId" value="${user.id}"/>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Отправить задачу</button>
            </form></td>
        </tr>
    </#list>

</table>
</div>
</body>
</html>