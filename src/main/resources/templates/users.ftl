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
    </tr>
    <#list users as user>
        <tr>
            <td> ${user.id}</td>
            <td> ${user.username}</td>
            <td> ${user.role}</td>
        </tr>
    </#list>

</table>
</div>
</body>
</html>