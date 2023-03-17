<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<form action="/customers?action=update" method="post">
<table class="table">
    <tbody>
   <tr>
       <th><input type="hidden" name="id" value="${customer.id}"></th>
   </tr>
   <tr>
       <th>Name</th>
       <th><input type="text" name="name" value="${customer.name}"></th>
   </tr>
   <tr>
       <th>Date</th>
       <th><input type="date" name="date" value="${customer.dateOfBirth}"></th>
   </tr>
   <tr>
       <th>Email</th>
       <th><input type="text" name="email" value="${customer.email}"></th>
   </tr>
   <tr>
       <th>Gender</th>
       <th><input type="number" name="gender" value="${customer.gender}"></th>
   </tr>
   <tr>
       <td><input type="hidden" name="nameAccount" value="${customer.nameAccount}"></td>
   </tr>
    <tr>
        <td><button type="submit">Update</button></td>
    </tr>
    </tbody>

</table>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>