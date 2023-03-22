<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 18/03/2023
  Time: 11:36 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ListCustomer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="/user/css/linearicons.css">
    <link rel="stylesheet" href="/user/css/owl.carousel.css">
    <link rel="stylesheet" href="/user/css/themify-icons.css">
    <link rel="stylesheet" href="/user/css/font-awesome.min.css">
    <link rel="stylesheet" href="/user/css/nice-select.css">
    <link rel="stylesheet" href="/user/css/nouislider.min.css">
    <link rel="stylesheet" href="/user/css/bootstrap.css">
    <link rel="stylesheet" href="/user/css/main.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            list-style: none;
            font-family: 'Montserrat', sans-serif
        }
        body {
            padding: 10px
        }
        .topnav {
            background-color: #ffff;
            overflow: hidden
        }
        .far.fa-user-circle {
            font-size: 29px;
            color: #726f6f;
            padding-top: 10px
        }
        .input-10 {
            width: 40px;
            color: #4c4c96;
            font-weight: 600
        }
        .fas.fa-search {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: lightsalmon;
            height: 100%
        }
        .topnav a {
            float: left;
            display: block;
            color: #8d8b8b;
            font-weight: 800;
            font-size: 14px;
            text-transform: uppercase;
            padding: 14px 16px;
            text-decoration: none;
            border-bottom: 3px solid transparent
        }
        .topnav a:hover {
            color: #f7910c;
            border-bottom: 3px solid red
        }
        .topnav .active {
            color: black;
            border-bottom: 3px solid red
        }
        form.example input[type=text] {
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 90%;
            height: 36px;
            background: #fff
        }
        form.example input[type=text]:focus {
            outline: none
        }
        form.example button {
            float: left;
            width: 10%;
            height: 36px;
            padding: 5px;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            background: black;
            color: white;
            font-size: 14px;
            border: 1px solid grey;
            border-left: none;
            cursor: pointer
        }
        .navbar-toggler:focus {
            box-shadow: none;
            outline: none;
            border: none
        }
        ::placeholder {
            font-size: 10px
        }
        form.example button:hover {
            background: #0b7dda
        }
        form.example::after {
            content: "";
            clear: both;
            display: table
        }
        .container .table-responsive {
            margin: 20px auto;
            overflow-x: auto
        }
        .container .table-responsive::-webkit-scrollbar {
            height: 5px
        }
        .container .table-responsive::-webkit-scrollbar-thumb {
            border-radius: 5px;
            background-image: linear-gradient(to right, #5D7ECD, #0C91E6)
        }
        .table thead tr th {
            font-size: 11px;
            color: white;
            padding: 10px 10px
        }
        .table tbody tr td {
            font-size: 13.5px;
            padding: 10px 10px
        }
        #navbar {
            width: 20%;
            background-color: black !important;
            height: 50px;
            border: none
        }
        .bg-blight {
            color: #7f7fee;
            font-weight: 600
        }
        .bg-bdark {
            color: #4c4c96;
            font-weight: 600
        }
        #navbar a {
            color: white
        }
        .fas.fa-bars {
            color: white
        }
        #navbar2 {
            width: 80%
        }
        #navbar-items {
            width: 20%;
            height: 500px;
            background-color: white;
        }
        ul#navbar-items li {
            color: black;
            padding: 15px 25px;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 10px;
            display: flex;
            align-items: center
        }
        ul li .fas {
            font-size: 16px
        }
        ul#navbar-items li:hover {
            background-color: #fd7e14;
            color: white
        }
        ul li:hover .fas {
            color: #f7910c
        }
        #topnavbar {
            width: 80%
        }
        .fs13 {
            font-size: 13px
        }
        .fs14 {
            font-size: 18px;
            color: white
        }
        .fas.fa-times {
            color: red
        }
        .fas.fa-check {
            color: greenyellow
        }
        .example {
            width: 50%
        }
        @media (max-width: 780px) {
            #navbar {
                width: 20%
            }
            #topnavbar {
                width: 80%
            }
            .text-decoration-none.fs14 {
                font-size: 10px
            }
            .text-decoration-none .fs13 {
                font-size: 9px
            }
        }
        @media (max-width: 430px) {
            #navbar-items, #topnavbar {
                width: 100%;
                height: 100%
            }
            #navbar-items {
                padding: 20px;
                margin-bottom: 30px
            }
            .topnav a {
                font-size: 12px;
                padding: 12px
            }
            #navbar {
                width: 100%;
                background-color: blue
            }
            .example {
                width: 100%
            }
            .text-decoration-none.fs14 {
                font-size: 14px
            }
            .text-decoration-none .fs13 {
                font-size: 13px
            }
        }
        @media (max-width: 376px) {
            #navbar-items {
                padding: 20px;
                margin-bottom: 30px
            }
            .topnav a {
                font-size: 12px;
                padding: 7px
            }
        }
        @media (max-width: 320px) {
            .topnav a {
                font-size: 10px;
                padding: 4px
            }
        }
        footer {
            background: #101010;
            padding: 86px 0;
        }
        .single-content {
            text-align: center;
            padding: 115px 0;
        }
        .single-box p {
            color: #fff;
            line-height: 1.9;
        }
        .single-box h3 {
            font-size: 16px;
            font-weight: 700;
            color: #fff;
        }
        .single-box .card-area i {
            color: #ffffff;
            font-size: 20px;
            margin-right: 10px;
        }
        .single-box ul {
            list-style: none;
            padding: 0;
        }
        .single-box ul li a {
            text-decoration: none;
            color: #fff;
            line-height: 2.5;
            font-weight: 100;
        }
        .single-box h2 {
            color: #fff;
            font-size: 20px;
            font-weight: 700;
        }
        #basic-addon2 {
            background: #fe1e4f;
            color: #fff;
        }
        .socials i {
            font-size: 18px;
            margin-right: 15px;
        }
        @media (max-width: 767px) {
            .single-box {
                margin-bottom: 50px;
            }
        }
        @media (min-width: 768px) and (max-width: 991px) {
            .single-box {
                margin-bottom: 50px;
            }
        }
        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }
        table.table th:last-child {
            width: 100px;
        }
        table.table td a {
            cursor: pointer;
            display: inline-block;
            margin: 0 5px;
            min-width: 24px;
            text-decoration: none;
        }
        table.table td a.edit {
            color: #FFC107;
        }
        table.table td a.delete {
            color: #E34724;
        }
        table.table td i {
            font-size: 19px;
        }
        table.table td a.add i {
            font-size: 24px;
            margin-right: -1px;
            position: relative;
            top: 3px;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
<div class="px-0 bg-light container-fluid">
    <div class="d-flex">
        <div class="d-flex align-items-center " id="navbar">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-items"
                    aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation"><span
                    class="fas fa-bars"></span></button>
            <a class="text-decoration-none fs14 ps-2" href="/user/index.jsp">Quản lý BookStore<span class="fs13 pe-2"></span></a>
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
                    <span class="text-uppercase fs13 fw-bolder pe-3">Tìm<span class="ps-1">Kiếm</span></span>
                    <form class="example d-flex align-items-center" action="/customers?action=search" method="post">
                        <input type="text" placeholder="Tìm kiếm theo tên" name="search" style="width: 40%;">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <div class="table-responsive px-2">
                    <table class="table" id="tableBook">
                        <thead class="table-dark">
                        <tr class="text-center">
                            <th>Mã khách hàng</th>
                            <th>Tên</th>
                            <th>Ngày sinh</th>
                            <th>Email</th>
                            <th>Giới tính</th>
                            <th>Tên đăng nhập</th>
                            <th>Tác vụ</th>
                        </tr>
                        </thead>
                        <tbody class="text-center">
                        <c:forEach items="${listCustomer}" var="customer">
                            <tr>
                                <td  >${customer.id}</td>
                                <td>${customer.name}</td>
                                <td>${customer.dateOfBirth}</td>
                                <td>${customer.email}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${customer.gender==0}">Nam</c:when>
                                        <c:when test="${customer.gender==1}">Nu</c:when>
                                        <c:when test="${customer.gender==2}">50/50</c:when>
                                    </c:choose>
                                </td>
                                <td>${customer.nameAccount}</td>
                                <td>
                                    <button style="background: white; border: 0"
                                            class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip"
                                            data-placement="top" title="Edit" onclick="location.href='/customers?action=update&id=${customer.id}'"><i
                                            style="color: black"
                                            class="fa fa-edit"></i></button>


                                    <button style="background: white; border: 0" class="btn btn-danger btn-sm rounded-0"
                                            type="button"
                                            data-toggle="tooltip" data-placement="top" title="Delete"><i
                                            style="color: black"
                                            class="fa fa-trash" data-toggle="modal" data-target="#myModal"></i></button>
                                </td>

                                    <%--modal delete--%>

                                <div class="modal" id="myModal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Delete</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <p>Delete Confirmation ${customer.name}</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-danger" data-dismiss="modal">Close</button>
                                                <button class="btn btn-danger"
                                                        onclick="location.href= '/customers?action=delete&id=${customer.id}'">
                                                    Delete
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer-area section_gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-3  col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6>Về chúng tôi</h6>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore dolore
                        magna aliqua.
                    </p>
                </div>
            </div>
            <div class="col-lg-4  col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6>Bản tin</h6>
                    <p>Luôn cập nhật thông tin mới nhất của chúng tôi</p>
                    <div class="" id="mc_embed_signup">

                        <form target="_blank" novalidate="true"
                              action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                              method="get" class="form-inline">

                            <div class="d-flex flex-row">

                                <input class="form-control" name="EMAIL" placeholder="Enter Email"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
                                       required="" type="email">


                                <button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right"
                                                                             aria-hidden="true"></i></button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                           type="text">
                                </div>
                            </div>
                            <div class="info"></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3  col-md-6 col-sm-6">
                <div class="single-footer-widget mail-chimp">
                    <h6 class="mb-20">Instragram</h6>
                    <ul class="instafeed d-flex flex-wrap">
                        <li><img src="img/i1.jpg" alt=""></li>
                        <li><img src="img/i2.jpg" alt=""></li>
                        <li><img src="img/i3.jpg" alt=""></li>
                        <li><img src="img/i4.jpg" alt=""></li>
                        <li><img src="img/i5.jpg" alt=""></li>
                        <li><img src="img/i6.jpg" alt=""></li>
                        <li><img src="img/i7.jpg" alt=""></li>
                        <li><img src="img/i8.jpg" alt=""></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6>Theo dõi chúng tôi</h6>
                    <p>Let us be social</p>
                    <div class="footer-social d-flex align-items-center">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
            <p class="footer-text m-0">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                Trung tâm CodeGym | C1122G1 <i class="fa fa-heart-o" aria-hidden="true"></i> bởi <a
                    href="https://colorlib.com" target="_blank">Team2</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="/user/js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="/user/js/vendor/bootstrap.min.js"></script>
<script src="/user/js/jquery.ajaxchimp.min.js"></script>
<script src="/user/js/jquery.nice-select.min.js"></script>
<script src="/user/js/jquery.sticky.js"></script>
<script src="/user/js/nouislider.min.js"></script>
<script src="/user/js/jquery.magnific-popup.min.js"></script>
<script src="/user/js/owl.carousel.min.js"></script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="/user/js/gmaps.min.js"></script>
<script src="/user/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function () {
        $('#tableBook').DataTable({
            "language": {
                "sProcessing": "Đang xử lý...",
                "sLengthMenu": "Xem _MENU_ mục",
                "sZeroRecords": "Không tìm thấy dòng nào phù hợp",
                "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
                "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
                "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                "sInfoPostFix": "",
                "sSearch": "Tìm:",
                "sUrl": "",
                "oPaginate": {
                    "sFirst": "Đầu",
                    "sPrevious": "Trước",
                    "sNext": "Tiếp",
                    "sLast": "Cuối"
                }
            },
            "searching": false,
            "pagingType": "full_numbers",
            'pageLength': 3
        });
    });
</script>
</body>
</html>