<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 17/03/2023
  Time: 6:36 SA
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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/user/img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <title>BookStores</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/linearicons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/nouislider.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/ion.rangeSlider.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/ion.rangeSlider.skinFlat.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/main.css">
    <style>
        * {
            font-family: Arial;
        }

        h1 {
            font-family: Arial;
            margin-top: 50px;
        }
    </style>
</head>
<body>

<!-- Start Header Area -->
<header class="header_area sticky-header">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light main_box">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="${pageContext.request.contextPath}/user/index.jsp"><img src="${pageContext.request.contextPath}/user/img/logo.jpg" alt=""
                                                                      style="height: 90px;width: 200px;"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/user/index.jsp">Trang chủ</a></li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">Sản phẫm</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/type">Danh mục sách</a></li>
                                <li class="nav-item"><a class="nav-link" href="/user/detail.jsp">Thông tin chi tiết
                                    sản phẫm</a></li>
                                <li class="nav-item"><a class="nav-link" href="checkout.html">Thanh toán sản phẫm</a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="cart.html">Giỏ hàng</a></li>
                                <li class="nav-item"><a class="nav-link" href="confirmation.html">Xác nhận</a></li>
                            </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">Blog</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                                <li class="nav-item"><a class="nav-link" href="single-blog.html">Chi tiết blog</a></li>
                            </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">Pages</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href=${pageContext.request.contextPath}/user/login.jsp>Login</a></li>
                                <li class="nav-item"><a class="nav-link" href="tracking.html">Theo dõi</a></li>
                                <li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">Liên hệ</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item"><a href="#" class="cart"><span class="ti-bag"></span></a></li>
                        <li class="nav-item">
                            <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="search_input" id="search_input_box">
        <div class="container">
            <form class="d-flex justify-content-between">
                <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                <button type="submit" class="btn"></button>
                <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
            </form>
        </div>
    </div>
</header>
<!-- End Header Area -->

<!-- start banner Area -->
<section class="banner-area">
    <div class="container">
        <div class="row fullscreen align-items-center justify-content-start">
            <div class="col-lg-12">
                <div class="active-banner-slider owl-carousel">
                    <!-- single-slide -->
                    <div class="row single-slide align-items-center d-flex">
                        <div class="col-lg-5 col-md-6">
                            <div class="banner-content">
                                <h1>Bộ sưu tập mới của <br>Sách!</h1>
                                <p>Sách là con đường ngắn nhất giúp con người tiếp cận với tri thức của nhân loại. Giá
                                    trị to lớn này một lần nữa được các nhân vật nổi tiếng khẳng định qua những câu nói
                                    về sách sau.</p>
                                <div class="add-bag d-flex align-items-center">
                                    <a class="add-btn" href=""><span class="lnr lnr-cross"></span></a>
                                    <span class="add-text text-uppercase">Thêm vào túi</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="banner-img">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/banner/2.png" alt="" style="height: 600px">
                            </div>
                        </div>
                    </div>
                    <!-- single-slide -->
                    <div class="row single-slide">
                        <div class="col-lg-5">
                            <div class="banner-content">
                                <h1>Bộ sưu tập mới của <br>Sách!</h1>
                                <p>Sách là con đường ngắn nhất giúp con người tiếp cận với tri thức của nhân loại. Giá
                                    trị to lớn này một lần nữa được các nhân vật nổi tiếng khẳng định qua những câu nói
                                    về sách sau.</p>
                                <div class="add-bag d-flex align-items-center">
                                    <a class="add-btn" href=""><span class="lnr lnr-cross"></span></a>
                                    <span class="add-text text-uppercase">Thêm vào túi</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="banner-img">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/banner/2.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- start features Area -->
<section class="features-area section_gap">
    <div class="container">
        <div class="row features-inner">
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="${pageContext.request.contextPath}/user/img/features/f-icon1.png" alt="">
                    </div>
                    <h6>Giao hàng miễn phí</h6>
                    <p>Miễn phí vận chuyển trên tất cả các đơn hàng</p>
                </div>
            </div>
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="${pageContext.request.contextPath}/user/img/features/f-icon2.png" alt="">
                    </div>
                    <h6>Chính sách đổi trả</h6>
                    <p>Miễn phí vận chuyển trên tất cả các đơn hàng</p>
                </div>
            </div>
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="${pageContext.request.contextPath}/user/img/features/f-icon3.png" alt="">
                    </div>
                    <h6>Hỗ trợ 24/7</h6>
                    <p>Miễn phí vận chuyển trên tất cả các đơn hàng</p>
                </div>
            </div>
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="${pageContext.request.contextPath}/user/img/features/f-icon4.png" alt="">
                    </div>
                    <h6>Thanh toán an toàn</h6>
                    <p>Miễn phí vận chuyển trên tất cả các đơn hàng</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end features Area -->

<!-- Start category Area -->
<section class="category-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/category/1.jpg" alt="" style="height: 190px">
                            <a href="${pageContext.request.contextPath}/user/img/category/c1.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Tết sách 23/04</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/category/2.jpg" alt="" style="height: 190px">
                            <a href="${pageContext.request.contextPath}/user/img/category/c2.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Đừng chọn an nhàn khi còn trẻ</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/category/3.jpg" alt="" style="height: 190px">
                            <a href="${pageContext.request.contextPath}/user/img/category/c3.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Book sách hay</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/category/4.jpg" alt="" style="height: 190px">
                            <a href="${pageContext.request.contextPath}/user/img/category/c4.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Book sách hay</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-deal">
                    <div class="overlay"></div>
                    <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/category/c5.jpg" alt="">
                    <a href="${pageContext.request.contextPath}/user/img/category/c5.jpg" class="img-pop-up" target="_blank">
                        <div class="deal-details">
                            <h6 class="deal-title">BlackFriday</h6>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End category Area -->

<!-- start product Area -->
<section class="owl-carousel active-product-area section_gap">
    <!-- single product slide -->
    <div class="single-product-slider">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 text-center">
                    <div class="section-title">
                        <h1>Sản phẫm mới nhất</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et
                            dolore
                            magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${bookList}" var="book">
                    <c:choose>
                        <c:when test="${book.price >= 450000}">
                            <div class="col-lg-3 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="${book.image}" alt="" style="height: 280px">
                                    <div class="product-details">
                                        <h6 style="height: 60px">${book.nameBook}</h6>
                                        <div class="price">
                                            <h6>${book.price}</h6>
                                            <h6 class="l-through">${book.price}</h6>
                                        </div>
                                        <div class="prd-bottom">
                                            <a href="" class="social-info">
                                                <span class="ti-bag"></span>
                                                <p class="hover-text">Thêm vào giỏ hàng</p>
                                            </a>
                                            <a href="" class="social-info">
                                                <span class="lnr lnr-heart"></span>
                                                <p class="hover-text">Danh sách yêu thích</p>
                                            </a>
                                            <a href="" class="social-info">
                                                <span class="lnr lnr-sync"></span>
                                                <p class="hover-text">So sánh</p>
                                            </a>
                                            <a href="" class="social-info">
                                                <span class="lnr lnr-move"></span>
                                                <p class="hover-text">Xem thêm</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- single product slide -->
    <div class="single-product-slider">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 text-center">
                    <div class="section-title">
                        <h1>Sách mới sắp ra mắt</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et
                            dolore
                            magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/product/p6.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/product/p6.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="img/product/p3.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="img/product/p5.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="img/product/p1.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="img/product/p4.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="img/product/p1.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/product/p6.jpg" alt="">
                        <div class="product-details">
                            <h6>addidas New Hammer sole
                                for Sports person</h6>
                            <div class="price">
                                <h6>$150.00</h6>
                                <h6 class="l-through">$210.00</h6>
                            </div>
                            <div class="prd-bottom">

                                <a href="" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">add to bag</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Wishlist</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-sync"></span>
                                    <p class="hover-text">compare</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">view more</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end product Area -->

<!-- Start exclusive deal Area -->
<section class="exclusive-deal-area">
    <div class="container-fluid">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-6 no-padding exclusive-left">
                <div class="row clock_sec clockdiv" id="clockdiv">
                    <div class="col-lg-12">
                        <h1>Ưu đãi hấp dẫn độc quyền sắp kết thúc!</h1>
                        <p>Những người cực kỳ yêu thích hệ thống thân thiện với môi trường.</p>
                    </div>
                    <div class="col-lg-12">
                        <div class="row clock-wrap">
                            <div class="col clockinner1 clockinner">
                                <h1 class="days">150</h1>
                                <span class="smalltext">Days</span>
                            </div>
                            <div class="col clockinner clockinner1">
                                <h1 class="hours">23</h1>
                                <span class="smalltext">Hours</span>
                            </div>
                            <div class="col clockinner clockinner1">
                                <h1 class="minutes">47</h1>
                                <span class="smalltext">Mins</span>
                            </div>
                            <div class="col clockinner clockinner1">
                                <h1 class="seconds">59</h1>
                                <span class="smalltext">Secs</span>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="" class="primary-btn">Shop Now</a>
            </div>
            <div class="col-lg-6 no-padding exclusive-right">
                <div class="active-exclusive-product-slider">
                    <div class="single-exclusive-slider">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="width: 230px;margin-left: 26px;height: 272px;">
                        <div class="product-details">
                            <div class="price">
                                <h6>85.000 đ</h6>
                                <h6 class="l-through">100.000 đ</h6>
                            </div>
                            <h4>Những bài học cuộc sống</h4>
                            <div class="add-bag d-flex align-items-center justify-content-center">
                                <a class="add-btn" href=""><span class="ti-bag"></span></a>
                                <span class="add-text text-uppercase">Thêm vào giỏ hàng</span>
                            </div>
                        </div>
                    </div>
                    <!-- single exclusive carousel -->
                    <div class="single-exclusive-slider">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/3.jpg" alt="" style="width: 230px;margin-left: 26px;height: 272px;">
                        <div class="product-details">
                            <div class="price">
                                <h6>85.000 đ</h6>
                                <h6 class="l-through">100.000 đ</h6>
                            </div>
                            <h4>Những bài học cuộc sống</h4>
                            <div class="add-bag d-flex align-items-center justify-content-center">
                                <a class="add-btn" href=""><span class="ti-bag"></span></a>
                                <span class="add-text text-uppercase">Thêm vào giỏ hàng</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End exclusive deal Area -->

<!-- Start brand Area -->
<section class="brand-area section_gap">
    <div class="container">
        <div class="row">
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/1.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/2.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/3.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/4.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/5.png" alt="">
            </a>
        </div>
    </div>
</section>
<!-- End brand Area -->

<!-- Start related-product Area -->
<section class="related-product-area section_gap_bottom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 text-center">
                <div class="section-title">
                    <h1>Ưu đãi cuối tuần</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore
                        magna aliqua.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt="" style="height: 70px; width: 70px;"></a>
                            <div class="desc">
                                <a href="#" class="title">Sách 1</a>
                                <div class="price">
                                    <h6>85000 đ</h6>
                                    <h6 class="l-through">100000 đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ctg-right">
                    <a href="#" target="_blank">
                        <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/user/img/category/c5.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End related-product Area -->

<!-- start footer Area -->
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

                                <!-- <div class="col-lg-4 col-md-4">
                                            <button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
                                        </div>  -->
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
                        <a href="https://www.facebook.com/profile.php?id=100086760068327"><i class="fa fa-facebook"></i></a>
                        <a href="https://www.facebook.com/profile.php?id=100086760068327"><i class="fa fa-twitter"></i></a>
                        <a href="https://www.facebook.com/profile.php?id=100086760068327"><i class="fa fa-dribbble"></i></a>
                        <a href="https://www.facebook.com/profile.php?id=100086760068327"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
            <p class="footer-text m-0">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                Trung tâm CodeGym | C1122G1 <i class="fa fa-heart-o" aria-hidden="true"></i> bởi <a
                    href="https://colorlib.com" target="_blank">Team3</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </div>
</footer>
<!-- End footer Area -->

<script src="${pageContext.request.contextPath}/user/js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/user/js/vendor/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/user/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath}/user/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/user/js/jquery.sticky.js"></script>
<script src="${pageContext.request.contextPath}/user/js/nouislider.min.js"></script>
<script src="${pageContext.request.contextPath}/user/js/countdown.js"></script>
<script src="${pageContext.request.contextPath}/user/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/user/js/owl.carousel.min.js"></script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="${pageContext.request.contextPath}/user/js/gmaps.min.js"></script>
<script src="${pageContext.request.contextPath}/user/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
