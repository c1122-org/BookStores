<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 21/03/2023
  Time: 1:34 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>Book Details</title>
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
                <a class="navbar-brand logo_h" href="/index2"><img src="${pageContext.request.contextPath}/user/img/logo.jpg" alt=""
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
                        <li class="nav-item active"><a class="nav-link"
                                                       href="/login">Trang
                            chủ</a></li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">Sản phẫm</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="/type">Danh mục sách</a></li>
                                <li class="nav-item"><a class="nav-link" href="single-product.html">Thông tin chi
                                    tiết</a></li>
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
                               aria-expanded="false">${nameAccount}</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
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
</header>
<!-- End Header Area -->

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Book Details</h1>
                <nav class="d-flex align-items-center">
                    <a href="${pageContext.request.contextPath}/user/index.jsp">Home<span
                            class="lnr lnr-arrow-right"></span></a>
                    <a href="${pageContext.request.contextPath}/user/login.jsp">Book Details</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Single Product Area =================-->
<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="s_Product_carousel">
                    <div class="single-prd-item">
                        <img class="img-fluid" src="${book.image}" alt="" width="100%">
                    </div>
<%--                    <div class="single-prd-item">--%>
<%--                        <img class="img-fluid" src="${book.image}" alt="">--%>
<%--                    </div>--%>
<%--                    <div class="single-prd-item">--%>
<%--                        <img class="img-fluid" src="${book.image}" alt="">--%>
<%--                    </div>--%>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <input type="hidden" name="id" value="${book.id}"/>
                    <h2>${book.nameBook}</h2>
                    <h3><fmt:formatNumber value="${book.price}" pattern="#.#"/> VND</h3>
                    <ul class="list">
                        <li><a class="active" href="#"><span>Loại sách:</span>${book.category.nameCategory}
                        </a></li>
                    </ul>
                    <p>${book.describes}</p>
                    <div class="product_count">
                        <label>Số lượng:</label>
                        <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:"
                               class="input-text qty">
                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                    </div>
                    <div class="card_area d-flex align-items-center">
                        <a class="primary-btn" href="#">Giỏ hàng</a>
                        <a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
                        <a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--================End Single Product Area =================-->

<!--================Product Description Area =================-->
<section class="product_description_area">
    <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                   aria-selected="true">Miêu tả</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                   aria-controls="profile"
                   aria-selected="false">Thông tin sách</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                   aria-controls="contact"
                   aria-selected="false">Bình luận</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab"
                   aria-controls="review"
                   aria-selected="false">Đánh giá</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                <p>Beryl Cook is one of Britain’s most talented and amusing artists .Beryl’s pictures feature women of
                    all shapes
                    and sizes enjoying themselves .Born between the two world wars, Beryl Cook eventually left Kendrick
                    School in
                    Reading at the age of 15, where she went to secretarial school and then into an insurance office.
                    After moving to
                    London and then Hampton, she eventually married her next door neighbour from Reading, John Cook. He
                    was an
                    officer in the Merchant Navy and after he left the sea in 1956, they bought a pub for a year before
                    John took a
                    job in Southern Rhodesia with a motor company. Beryl bought their young son a box of watercolours,
                    and when
                    showing him how to use it, she decided that she herself quite enjoyed painting. John subsequently
                    bought her a
                    child’s painting set for her birthday and it was with this that she produced her first significant
                    work, a
                    half-length portrait of a dark-skinned lady with a vacant expression and large drooping breasts. It
                    was aptly
                    named ‘Hangover’ by Beryl’s husband and</p>
                <p>It is often frustrating to attempt to plan meals that are designed for one. Despite this fact, we are
                    seeing
                    more and more recipe books and Internet websites that are dedicated to the act of cooking for one.
                    Divorce and
                    the death of spouses or grown children leaving for college are all reasons that someone accustomed
                    to cooking for
                    more than one would suddenly need to learn how to adjust all the cooking practices utilized before
                    into a
                    streamlined plan of cooking that is more efficient for one person creating less</p>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>
                                <h5>Width</h5>
                            </td>
                            <td>
                                <h5>128mm</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Height</h5>
                            </td>
                            <td>
                                <h5>508mm</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Depth</h5>
                            </td>
                            <td>
                                <h5>85mm</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Weight</h5>
                            </td>
                            <td>
                                <h5>52gm</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Quality checking</h5>
                            </td>
                            <td>
                                <h5>yes</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Freshness Duration</h5>
                            </td>
                            <td>
                                <h5>03days</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>When packeting</h5>
                            </td>
                            <td>
                                <h5>Without touch of hand</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Each Box contains</h5>
                            </td>
                            <td>
                                <h5>60pcs</h5>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="comment_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-1.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item reply">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-2.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-3.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Post a comment</h4>
                            <form class="row contact_form" action="contact_process.php" method="post" id="contactForm"
                                  novalidate="novalidate">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name"
                                               placeholder="Your Full name">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" name="email"
                                               placeholder="Email Address">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="number" name="number"
                                               placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" id="message" rows="1"
                                                  placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button type="submit" value="submit" class="btn primary-btn">Submit Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row total_rate">
                            <div class="col-6">
                                <div class="box_total">
                                    <h5>Tổng thể</h5>
                                    <h4>4.0</h4>
                                    <h6>(03 Đánh giá)</h6>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="rating_list">
                                    <h3>Dựa trên 3 đánh giá</h3>
                                    <ul class="list">
                                        <li><a href="#">5 Sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">4 Sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">3 Sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">2 Sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">1 Sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="review_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-1.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Khải đẹp trai</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-2.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Minh đẹp trai</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-3.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Anh đẹp trai</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Thêm review: </h4>
                            <p>Đánh giá của bạn:</p>
                            <ul class="list">
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                            </ul>
                            <p>Nổi bật</p>
                            <form class="row contact_form" action="contact_process.php" method="post"
                                  novalidate="novalidate">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="name"
                                               placeholder="Vui lòng nhập tên:" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Your Full name'">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email"
                                               placeholder="Vui lòng nhập email:" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Email Address'">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="number"
                                               placeholder="Vui lòng nhập số điện thoại" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Phone Number'">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" rows="1" placeholder="Đánh giá"
                                                  onfocus="this.placeholder = ''"
                                                  onblur="this.placeholder = 'Review'"></textarea></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button type="submit" value="submit" class="primary-btn">Nhập</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                            <a href="#"><img src="${pageContext.request.contextPath}/user/img/2.jpg" alt=""
                                             style="height: 70px; width: 70px;"></a>
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
                        <img class="img-fluid d-block mx-auto"
                             src="${pageContext.request.contextPath}/user/img/category/c5.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="footer-area section_gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6>Về chúng tôi</h6>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore dolore
                        magna aliqua.
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
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
                                </div> -->
                            </div>
                            <div class="info"></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
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
                    href="https://colorlib.com" target="_blank">Team3</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </div>
</footer>

<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>

