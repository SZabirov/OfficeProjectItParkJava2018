<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Groups</title>
    <#include "links.ftl">
</head>
<body>
<#include "menu.ftl">
<div class="container">
<h1>Group List</h1>
<table class="table">
    <tr class="thead-dark">
        <th>Id</th>
        <th>Name</th>
        <th>Users</th>
        <th></th>
    </tr>
    <#list groups as group>
        <tr>
            <td> ${group.id}</td>
            <td>${group.name}</td>
            <td>
                <ul>
                <#list group.users as user>
                    <li><a href="/user/${user.id}">${user.username}</a></li>
                </#list>
                </ul>
            </td>
            <td><form class="form-inline my-2 my-lg-0" action="/user/sendtasktogroup" method="get">
                <#--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
                    <input type="hidden" name="groupId" value="${group.id}"/>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Сообщение</button>
            </form></td>
        </tr>
    </#list>
</table>
</div>
</body>
</html>