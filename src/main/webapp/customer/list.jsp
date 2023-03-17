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
<h1>Customer List</h1>
<table class="table">
    <thread>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Date</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Name Account</th>
        </tr>
    </thread>
    <tbody>
    <c:forEach items="${listCustomer}" var="customer">
        <tr>
            <th>${customer.id}</th>
            <th>${customer.name}</th>
            <th>${customer.dateOfBirth}</th>
            <th>${customer.email}</th>
            <th>${customer.gender}</th>
            <th>${customer.nameAccount}</th>
            <th><a href="/customers?action=delete&id=${customer.id}">Delete</a></th>
            <th><a href="/customers?action=update&id=${customer.id}">Update</a></th>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>