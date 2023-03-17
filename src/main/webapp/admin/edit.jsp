<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/17/2023
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
    <link rel="stylesheet" href="../css/bootstrap-grid.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <style>
        * {
            padding: 0;
            margin: 0 auto;
        }

        body {
            /*background: url("../../img/dark-cloth-with-plate-waffles.jpg") top center / cover no-repeat;*/
            display: flex;
            align-items: center;
            /* justify-content: center; */
            height: 700px;
            font-size: 24px;
        }

        label {
            color: #564040;
            font-size: 20px;
            font-family: "Apple Color Emoji";
            font-weight: bolder;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        input {
            border-radius: 5px;
            font-size: 20px !important;
            font-family: "Apple Color Emoji";
        }

        h1 {
            margin: 5px;
            margin-bottom: 10px;
            color: #a46f0f;
            text-align: center;
            font-size: 36px;
            text-transform: uppercase;
        }
    </style>
</head>
<body>
<div class="col-md-5 main">
    <h1>Update book</h1>
    <form action="" method="post">
        <input type="hidden" name="id" value="${book.id}">

        <label for="nameBook">Input title: </label>
        <input type="text" class="form-control" name="nameBook" id="nameBook"  value="${book.nameBook}">

        <label for="price">Input price: </label>
        <input type="text" class="form-control" name="price" id="price" value="${book.price}">

        <label for="author">Input author: </label>
        <input type="text" class="form-control" name="author" id="author" value="${book.author}">

        <label for="publishingCompany">Input publishing company: </label>
        <input type="text" class="form-control" name="publishingCompany" id="publishingCompany" value="${book.publishingCompany}">

        <label for="publisher">Input publisher: </label>
        <input type="text" class="form-control" name="publisher" id="publisher" value="${book.publisher}">

        <label for="translator">Input translator: </label>
        <input type="text" class="form-control" name="translator" id="translator" value="${book.translator}">

        <label for="describes">Input describes: </label>
        <input type="text" class="form-control" name="describes" id="describes" value="${book.describes}">

        <label for="image">Input image: </label>
        <input type="text" class="form-control" name="image" id="image" value="${book.image}">

        <label for="categoryID" id="categoryID">Input category name: </label>
        <select class="form-select" name="categoryID" >
            <c:forEach var="category" items="${categoryList}">
                <c:if test="${category.idCategory == book.category.idCategory}">
                    <option value="${category.idCategory}" selected>${category.nameCategory}</option>
                </c:if>
                <c:if test="${category.idCategory != book.category.idCategory}">
                    <option value="${category.idCategory}">${category.nameCategory}</option>
                </c:if>
            </c:forEach>
        </select>

        <input type="submit" value="Update" class="btn btn-secondary mt-3" style="background: #3d3c3c; margin-top: 10px;margin-left: 200px">
    </form>
</div>
<script src="../js/bootstrap.bundle.js"></script>
</body>
</html>
