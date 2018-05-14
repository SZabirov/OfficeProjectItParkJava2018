<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <#include "links.ftl">
    <style>
        .col-1 {
            font-weight: bold;
        }
        .row {
            line-height: 2;
        }
    </style>
</head>
<body>
<#include "menu.ftl">
<div class="container">

    <h1>User details</h1>
    <div class="row">
        <div class="col-1"></b>Username:</div>
        <div class="col-11">${user.username}</div>
    </div>
    <div class="row">
        <div class="col-1">Firstname: </div>
        <div class="col-11">${user.firstname}</div>
    </div>
    <div class="row">
        <div class="col-1">Lastname: </div>
        <div class="col-11">${user.lastname}</div>
    </div>
    <div class="row">
        <div class="col-1">Role: </div>
        <div class="col-11">${user.role}</div>
    </div>
    <div class="row">
        <div class="col-1">Phone: </div>
        <div class="col-11">${user.phone}</div>
    </div>
    <div class="row">
        <div class="col-1">Email: </div>
        <div class="col-11">${user.email}</div>
    </div>
    <div class="row">
        <div class="col-1">Gender: </div>
        <div class="col-11">${user.gender}</div>
    </div>
    <div class="row">
        <div class="col-1">Birthdate: </div>
        <div class="col-11">${user.birthdate}</div>
    </div>
<#--<h1>User details</h1>-->
<#--<table class="table">-->
<#--<thead>-->
<#--<tr>-->
<#--<th scope="col">Id</th>-->
<#--<th scope="col">Username</th>-->
<#--<th scope="col">Role</th>-->
<#--</tr>-->
<#--</thead>-->
<#--<tbody>-->
<#--<tr>-->
<#--<td>${user.id}</td>-->
<#--<td>${user.username}</td>-->
<#--<td>${user.role}</td>-->
<#--</tr>-->
<#--</tbody>-->
<#--</table>-->
</div>
</body>
</html>