<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 15/03/2023
  Time: 1:57 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <style>
        * {
            margin: 0;
            padding: 0
        }

        body {
            background-color: #f2eae3
        }

        .name {
            font-size: 16px;
            color: #e83d16 !important;
            font-weight: 500
        }

        .navbar-toggler {
            font-size: 15px
        }

        .nav-link {
            font-size: 14px;
            color: #000 !important;
            font-weight: bold;
            margin-left: 40px
        }

        .form-control {
            height: 32px;
            width: 100%;
            border-radius: 20px;
            color: #c7c6cb;
            font-size: 13px;
            border: none
        }

        .searchitem {
            position: relative
        }

        .searchitem i {
            position: absolute;
            right: 18px;
            top:10px;
            font-size: 13px
        }

        .btn {
            height: 35px;
            width: 190px;
            border: none;
            border-radius: 20px;
            background-color: #633a9c;
            font-size: 14px;
            font-weight: 500
        }

        .text {
            font-size: 23px;
            font-weight: bold
        }

        .card {
            height: 130px;
            overflow:hidden;
            border: none;
            border-radius: 15px
        }

        .imagename {
            font-size: 14px;
            font-weight: bold
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand name" href="#">BookStores</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sản phẩm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Thể loại</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Liên hệ</a>
                        </li>
                    </ul>
                    <form class="d-flex  searchitem">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <i class="fa fa-search"></i>
                    </form>
                </div>
            </div>
        </nav>

        <div class="d-flex justify-content-center align-items-center mt-5"> <button class="btn btn-dark">Danh mục của chúng tôi</button>
        </div>
        <div class="d-flex justify-content-center mt-3"> <span class="text text-center">Tìm sách tốt nhất hiện nay<br> trong tầm tay của bạn</span>
        </div>
        <div class="row mt-2 g-4">
            <div class="col-md-3">
                <div class="card p-1">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Chính trị – pháp luật</span></div>
                        <div> <img src="img/1.jpg" height="100" width="80" /> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-2">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Khoa học công nghệ – Kinh tế</span></div>
                        <div> <img src="img/2.jpg" height="100" width="100" /> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-2">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Văn hóa xã hội – Lịch sử</span></div>
                        <div> <img src="img/3.jpg" height="100" width="80" /> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-2">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Văn học nghệ thuật</span></div>
                        <div> <img src="img/4.jpg" height="100" width="100" /> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-2tr5">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Giáo trình</span></div>
                        <div> <img src="img/5.jpg" height="100" width="100" /> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-2">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Truyện, tiểu thuyết</span> </div>
                        <div> <img src="img/6.jpg" height="100" width="100" /> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-2">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Tâm lý, tâm linh, tôn giáo</span> </div>
                        <div> <img src="img/7.jpg" height="100" width="100" /> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-2">
                    <div class="d-flex justify-content-between align-items-center p-2">
                        <div class="flex-column lh-1 imagename"> <span>Thiếu nhi</span> </div>
                        <div> <img src="img/8.jpg" height="100" width="100" /> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
