<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    <title>Document</title>
</head>
<body>
<div class="container">
<a href="/login"><h1>< Back</h1></a>
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