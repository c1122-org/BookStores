<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 17/03/2023
  Time: 11:31 SA
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
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>

<!-- Start Header Area -->
<header class="header_area sticky-header">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light main_box">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="${pageContext.request.contextPath}/user/index.jsp"><img src="img/logo.jpg" alt=""
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
                                <li class="nav-item"><a class="nav-link" href="/type">Danh mục sách</a></li>
                                <li class="nav-item"><a class="nav-link" href="single-product.html">Thông tin chi tiết</a></li>
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
                                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/login.jsp">Login</a></li>
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

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Login/Register</h1>
                <nav class="d-flex align-items-center">
                    <a href="${pageContext.request.contextPath}/user/index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                    <a href="${pageContext.request.contextPath}/user/login.jsp">Login/Register</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Login Box Area =================-->
<section class="login_box_area section_gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login_box_img">
                    <img class="img-fluid" src="img/login.jpg" alt="" style="height: 820px">
                    <div class="hover">
                        <h4>Bạn đã vào trang website của chúng tôi?</h4>
                        <p>Có những tiến bộ đang được thực hiện trong khoa học và công nghệ hàng ngày, và một ví dụ điển
                            hình về điều này là</p>
                        <a class="primary-btn" href="login.jsp">Đăng nhập vào tài khoản?</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="login_form_inner">
                    <h3>Đăng ký</h3>
                    <form class="row login_form" action="/register" id="contactForm" novalidate="novalidate">
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control" id="cus_name" name="name" placeholder="Họ và tên">
                            <p id="error"></p>
                            <span class="form-message"></span>
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control" id="cus_email" name="email" placeholder="Email">
                            <p id="error1"></p>
                            <span class="form-message"></span>
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="date" class="form-control" id="cus_date_of_birth" name="date">
                            <p id="error2"></p>
                            <span class="form-message"></span>
                        </div>
                        <div class="col-md-12 form-group">
                            <select name="gender" id="gender">
                                <option value="0">Nam</option>
                                <option value="1">Nữ</option>
                                <option value="2">Giới tính khác</option>
                            </select>
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control" id="nameAccount" name="nameAccount"
                                   placeholder="Tên đăng nhập">
                            <p id="error3"></p>
                            <span class="form-message"></span>
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="password" class="form-control" id="passAccount" name="passAccount"
                                   placeholder="Mật khẩu">
                            <p id="error4"></p>
                            <span class="form-message"></span>
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="password" class="form-control" id="pass1" name="repass"
                                   placeholder="Nhập lại mật khẩu">
                            <p id="error5"></p>
                            <span class="form-message"></span>
                        </div>
                        <div class="col-md-12 form-group">
                            <div class="creat_account">
                                <input type="checkbox" id="f-option2" name="selector">
                                <label for="f-option2">Nhớ mật khẩu</label>
                            </div>
                        </div>
                        <div class="col-md-12 form-group">
                            <button type="submit" value="submit" class="primary-btn">Đăng ký</button>
                            <a href="#">Quên mật khẩu?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
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
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                Trung tâm CodeGym | C1122G1 <i class="fa fa-heart-o" aria-hidden="true"></i> bởi <a
                    href="https://colorlib.com" target="_blank">Team3</a>
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
<script src="js/validator.js"></script>
<script>
    const form = document.getElementById("contactForm");

    form.addEventListener("submit", function(event){
        const input = document.getElementById("cus_name").value;
        const input1 = document.getElementById("cus_email").value;
        const input2 = document.getElementById("cus_date_of_birth").value;
        const input3 = document.getElementById("nameAccount").value;
        const input4 = document.getElementById("passAccount").value;
        const input5 = document.getElementById("pass1").value;
        const pattern = /^\s*$/;

        if(pattern.test(input)){
            event.preventDefault();
            document.getElementById("error").innerHTML = "Vui lòng nhập họ và tên";
        }
        if(pattern.test(input1)){
            event.preventDefault();
            document.getElementById("error1").innerHTML = "Vui lòng nhập email";
        }
        if(pattern.test(input2)){
            event.preventDefault();
            document.getElementById("error2").innerHTML = "Vui lòng nhập ngày sinh";
        }
        if(pattern.test(input3)){
            event.preventDefault();
            document.getElementById("error3").innerHTML = "Vui lòng nhập tên tài khoản";
        }
        if(pattern.test(input4)){
            event.preventDefault();
            document.getElementById("error4").innerHTML = "Vui lòng nhập mật khẩu";
        }
        if(pattern.test(input5)){
            event.preventDefault();
            document.getElementById("error5").innerHTML = "Vui lòng nhập đúng mật khẩu";
        }
    });
</script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="./js/validator.js"></script>
</body>
</html>
