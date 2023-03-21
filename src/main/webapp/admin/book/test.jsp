<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/20/2023
  Time: 9:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="px-0 bg-light container-fluid">
  <div class="d-flex">
    <div class="d-flex align-items-center " id="navbar">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-items"
              aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation"><span
              class="fas fa-bars"></span></button>
      <a class="text-decoration-none fs14 ps-2" href="#">Quản lý BookStore<span class="fs13 pe-2"></span></a>
    </div>
    <div id="navbar2" class="d-flex justify-content-end pe-4"><span class="far fa-user-circle "></span></div>
  </div>
  <div class="d-md-flex">
    <ul id="navbar-items" class="p-0">
      <li><span class="fas fa-th-list"></span> <span class="ps-3 name">Quản lý sách</span></li>
      <li><span class="fas fa-chart-line"></span> <span class="ps-3 name">Quản lý khách hàng</span></li>
      <li><span class="fas fa-clipboard-check"></span> <span class="ps-3 name">Quản lý loại sách</span></li>
    </ul>
    <div id="topnavbar">
      <div class="topnav mb-3">
        <div class="d-flex px-1"><a href="/adminBook" class="active">Sách</a> <a href="/customers">Khách Hàng</a> <a
                href="/type">Loại sách</a>
        </div>
        <div class="d-flex align-items-center mb-3 px-md-3 px-2">
          <%--button search--%>
          <span class="text-uppercase fs13 fw-bolder pe-3">Tìm<span class="ps-1">Kiếm</span></span>
          <form class="example d-flex align-items-center">
            <input type="text" placeholder="Tìm kiếm theo tên" name="name" value="${nameSearch}"
                   style="width: 40%;">
            <button type="submit"><i class="fa fa-search"></i></button>
          </form>
          <%--button thêm mới--%>
          <form class="example d-flex align-items-center" action="/adminBook">
            <input type="hidden" name="action" value="create">
            <button type="submit" style="width: 100px">Thêm sách</button>
          </form>
        </div>
        <%--Hiển thị list--%>
        <div class="table-responsive px-2">
          <table id="tableAdminFood" class="table table-responsive">
            <thead class="table-dark">
            <tr class="text-center">
              <th>Mã sách</th>
              <th>Tên sách</th>
              <th>Gía sách</th>
              <th>Tác giả</th>
              <%--                            <th>Chi tiết sách</th>--%>
              <th>Nhà phát hành</th>
              <th>Nhà xuất bản</th>
              <th>Người phiên dịch</th>
              <th style="text-align: left">Mô tả</th>
              <th>Ảnh</th>
              <th>Loại sách</th>
              <th>Chức năng</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <c:forEach var="book" items="${bookList}">
              <tr>
                <td>${book.id}</td>
                <td>${book.nameBook}</td>
                <td>${book.price}</td>
                <td>${book.author}</td>
                <td>${book.publishingCompany}</td>
                <td>${book.publisher}</td>
                <td>${book.translator}</td>
                <td>${book.describes}</td>
                <td><img src="${book.image}" alt="" width="100px;"></td>
                <td>${book.category.nameCategory}</td>
                  <%-- button delete --%>
                <td>
                  <button type="button" onclick="deleteInfo('${book.id}','${book.nameBook}')"
                          style="margin-bottom: 5px; line-height: 1.3px" class="btn btn-danger"
                          data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <i class="fas fa-trash-alt"></i>
                  </button>
                    <%-- edit --%>
                    <%--                                    <a href="/adminBook?action=edit&id=${book.id}" class="btn btn-primary"><i--%>
                    <%--                                            class="fas fa-edit" style="line-height: 1.3px"></i></a>--%>
                  <a class="edit" title="Edit" data-toggle="tooltip"
                     style="width: 30px;text-decoration: none"
                     href="/adminBook?action=edit&id=${book.id}"><i
                          class="fa fa-edit">&#xE254;</i></a>
                </td>
              </tr>
            </c:forEach>

            </tbody>
          </table>

        </div>
        <%-- modal xóa --%>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Book</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
              </div>
              <form action="/adminBook?action=delete" method="post">
                <div class="modal-body">
                  <label for="deleteId"></label><input type="text" hidden id="deleteId"
                                                       name="deleteId" value="${book.id}">
                  Do you want to delete <span id="deleteName"
                                              style="color: brown; font-weight: bold">${book.nameBook}</span>
                  ?
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel
                  </button>
                  <button type="submit" class="btn btn-primary">Confirm</button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <script>
          function deleteInfo(id, name) {
            document.getElementById("deleteId").value = id;
            document.getElementById("deleteName").innerText = name;
          }
        </script>

      </div>
    </div>
  </div>
</div>
</body>
</html>
