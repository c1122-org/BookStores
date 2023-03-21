<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 20/03/2023
  Time: 9:32 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table class="table" id="tableBook">
        <thead class="table-dark">
        <tr class="text-center">
            <th style="text-align: center">Mã loại sách</th>
            <th style="text-align: center">Tên loại sách</th>
            <th style="text-align: center">Tác vụ</th>
        </tr>
        </thead>
        <tbody class="text-center">
        <c:forEach items="${typeBook}" var="type">
            <tr>
                <td>${type.categoryId}</td>
                <td>${type.categoryName}</td>
                <td>
                    <a class="edit" title="Edit" data-toggle="tooltip"
                       style="width: 30px;text-decoration: none"
                       href="/type?action=update&categoryId=${type.categoryId}"><i class="fa fa-edit">&#xE254;</i></a>
                    <a class="delete" title="Delete" data-toggle="tooltip"
                       style="width: 30px;text-decoration: none"
                       href="/type?action=delete&id=${type.categoryId}"><i
                            class="fa fa-trash">&#xE872;</i></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
