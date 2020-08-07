<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

    <head>
        <title>Foodtap</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="icon" 
              type="image/png" 
              href="/public/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png">
        <!--CSS-->
        <!--CSS-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/public/fontawesome-free-5.13.1-web/fonts/mvboli.ttf" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
        <link href="/public/fontawesome-free-5.13.1-web/css/all.css" rel="stylesheet" />

        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/startbootstrap-sb-admin-2/3.3.7+1/css/sb-admin-2.css">
        <link rel="stylesheet" type="text/css"  href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.min.css" />

        <link rel="stylesheet" type="text/css" href="/public/css/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="/public/css/styte.css" />
        <script src="https://cdn.jsdelivr.net/npm/@goongmaps/goong-js@1.0.2/dist/goong-js.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/@goongmaps/goong-js@1.0.2/dist/goong-js.css" rel="stylesheet" />
        <script src='https://cdn.jsdelivr.net/npm/@goongmaps/goong-geocoder@1.0.2/dist/goong-geocoder.min.js'></script>
        <link href="https://cdn.jsdelivr.net/npm/@goongmaps/goong-geocoder@1.0.2/dist/goong-geocoder.css" rel="stylesheet"
              type="text/css" />
        <style>
            #map {
                height: 300px;
                width: 400px;
            }
        </style>
    </head>

    <body>

        <div class="modal fade" id="alertModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document" style="width: 30%;">
                <div class="modal-content">
                    <input id="tempIdProduct" hidden/>
                    <input id="tempQuantityProduct" hidden/>
                    <div class="modal-header" style="padding: 0 15px;">
                        <h5 class="modal-title" id="exampleModalLongTitle">CHUYỂN CỬA HÀNG KHÁC</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="text-align: center;">
                        <div class="content">Các món trong mỗi đơn hàng chỉ có thể đến từ một cửa hàng, bạn có muốn lưu đơn hiện tại và chuyển cửa hàng?</div>
                        <div style="margin-top: 25px;">
                            <button type="button" class="btn btn-info switch-cart" idValue="save" data-dismiss="modal" style="color: white;background-color: #007bff;">Lưu lại</button>
                            <button type="button" class="btn btn-secondary switch-cart" idValue="switch" data-dismiss="modal" style="color: white;background-color: #da484a;">Chuyển</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:choose>
            <c:when test="${cookie['cart'].getValue()>0}">
                <a href='/cart' id='myCart' ><img src='/public/image/icons/shopping-circle-blue-512.png' width='80' height='80' ><span class='badge count-cart-fix'>${cookie["cart"].getValue()}</span></a>
                </c:when>
                <c:otherwise>
                <a href='/cart' style="display:none" id='myCart' ><img src='/public/image/icons/shopping-circle-blue-512.png' width='80' height='80' ><span class='badge count-cart-fix'>${cookie["cart"].getValue()}</span></a>
                </c:otherwise>
            </c:choose>

        <a onclick="topFunction()" id="myBtn" title="Go to top">Top</a>
        <input id="idUser" value="${cookie["_id"].getValue()}" hidden/>
        <!--Menu-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top  navbar-fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="/"><img class="img-logo" src="/public/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png" alt="logo" />foodtap</a>
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <div class="nav-item search order-0 mx-auto">
                    <form class="form-inline ">
                        <div class="input-group">
                            <input type="text" class="form-control inputsearch" data-toggle="dropdown"  id="dropdownMenuButton" placeholder="Tìm kiếm món ăn, cửa hàng, bạn mới,..." />
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="List" style="width: 100%">
                                <div class="notification" style="background-color: #d8dfed;background-clip: border-box;">
                                    <span>Mọi người</span>
                                </div>
                                <a class="dropdown-item" href="#"><img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="rounded-circle search-avatar" alt=""/>Phan Anh</a>
                                <a class="dropdown-item" href="#"><img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="rounded-circle search-avatar" alt=""/>Thi Tran</a>
                                <a class="dropdown-item" href="#"><img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="rounded-circle search-avatar" alt=""/>Trang Tran</a>
                                <div class="notification" style="background-color: #d8dfed;background-clip: border-box;">
                                    <span>Cửa hàng</span>
                                </div>
                                <a class="dropdown-item" href="#"><img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="search-avatar" alt=""/>Phan Anh</a>
                                <a class="dropdown-item" href="#"><img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="search-avatar" alt=""/>Thi Tran</a>
                                <a class="dropdown-item" href="#"><img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="search-avatar" alt=""/>Trang Tran</a>

                            </div>
                            <div class="input-group-prepend">
                                <button class="btn btn-Search "  type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
                <%
                    String fullname = "";
                    Cookie[] cookies = request.getCookies();
                    if (cookies != null) {
                        for (Cookie cookie : cookies) {
                            if (cookie.getName().equals("fullname")) {
                                fullname = URLDecoder.decode(cookie.getValue(), "UTF-8");
                            }
                        }
                    }
                %>
                <ul class="navbar-nav">
                    <li class="nav-item media">
                        <img class="mr-3 rounded-circle img-avatar" src="http://localhost:9032/public/image/${cookie["avatar"].getValue()}" alt="avatar" />
                        <div class="media-body">
                            <a href="/myprofile-user"><%=fullname%></a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white;text-decoration: none;">
                            <i class="fas fa-users fa-menu"></i>
                            <span class="numberFriendRequest">${friendRequests.size()==0?"":friendRequests.size()}</span>
                            <span class="badge count-cart"></span>
                            <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-messenger">
                            <div class="messenger">
                                <h5>Lời mời kết bạn</h5>
                            </div>
                            <div class="listRequest">
                                <c:forEach var="item" items="${friendRequests}">
                                    <c:if test="${item.status=='requested'}">
                                        <div class="messenger h-100">
                                            <img src="http://localhost:9032/public/image/${item.user.avatar}" class="messenger-avatar" alt=""/>
                                            <div style="width: 350px;">
                                                <div class="messenger-name">${item.user.fullname}</div>
                                            </div>
                                            <div  style="display: flex;">
                                                <button class="btn accept-friend" idValue="${item.user._id}" style="margin-right: 10px;height: 35px;">Chấp nhận</button>
                                                <button class="btn cancel-friend" idValue="${item.user._id}" style="margin-right: 10px;height: 35px;">Từ chối</button>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                            <div class="text-center">
                                <span><a  href="/sametaste">Xem tất cả</a></span>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white;text-decoration: none;"><i class="fa fa-bell fa-menu" aria-hidden="true" ></i>
                            <span class="badge count-cart numberNoti"></span><span class="caret"></span></a>
                        <div class="dropdown-menu dropdown-notification">
                            <div class="notification" style="background-color: #d8dfed;background-clip: border-box;">
                                <span>Thông báo</span>
                            </div>
                            <div class="notification-content">
                                <c:forEach var="noti" items="${notifications}">

                                    <div class="notification">
                                        <c:choose>
                                            <c:when test="${noti.fromUser ==null}">
                                                <img src="http://localhost:9032/public/image/${noti.fromRestaurant.avatar}" class="messenger-avatar from-noti-avatar" alt=""/>
                                                <div>
                                                    <div class="noti-fullname">${noti.fromRestaurant.name}</div>
                                                    <div class="noti-date">${noti.date}</div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <img src="http://localhost:9032/public/image/${noti.fromUser.avatar}" class="messenger-avatar from-noti-avatar" alt=""/>
                                                <div>
                                                    <div class="noti-fullname">${noti.fromUser.fullname}</div>
                                                    <div class="noti-date">${noti.date}</div>
                                                    <a href="${noti.link}">
                                                        <div class="noti-content">${noti.content}</div>
                                                    </a>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${noti.toRestaurant!=null}">
                                                <img src="http://localhost:9032/public/image/${noti.toRestaurant.avatar}" class="store-avatar to-noti-avatar" alt=""/>
                                            </c:when>
                                            <c:otherwise>
                                                <img src="http://localhost:9032/public/image/${noti.newfeed.avatar}" class="store-avatar to-noti-avatar" alt=""/>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="text-center">
                                <span><a  href="/">Đã xem tất cả</a></span>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white;text-decoration: none;"><i class="fa fa-comment fa-menu" aria-hidden="true"></i></i><span class="badge count-cart">3</span><span class="caret"></span></a></a>
                        <div class="dropdown-menu dropdown-messenger">
                            <div class="messenger">
                                <img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div style="width: 245px;">
                                    <div class="messenger-name">Truong</div>
                                    <p class="messenger-content">đâsdsadasdasd</p>
                                </div>
                                <div>12:00</div>
                            </div>
                            <div class="messenger">
                                <img src="/public/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div style="width: 245px;">
                                    <div class="messenger-name">Truong</div>
                                    <p class="messenger-content">đâsdsadasdasdsssssssssssssssssssssssssssssssssssssssssssssss</p>
                                </div>
                                <div>12:00</div>
                            </div>
                            <div class="messenger-footer">
                                <span><a  href="/message/">Xem tất cả</a></span>
                                <span style="float: right;"><a href="#">Đánh dấu đã đọc tất cả</a></span>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <form action="/login" method="GET">
                            <a onclick="this.parentNode.submit()" style="color: white;text-decoration: none;"><i class="fas fa-sign-out-alt"></i></a>
                        </form>
                    </li>
                </ul>
            </div>
        </nav>