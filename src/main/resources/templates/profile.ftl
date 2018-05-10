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
<h1>User details</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Username</th>
        <th scope="col">Role</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${user.id}</td>
        <td>${user.username}</td>
        <td>${user.role}</td>
    </tr>
    </tbody>
</table>
</div>
</body>
</html>