
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Register Store</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!--CSS-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/fontawesome-free-5.13.1-web/fonts/mvboli.ttf" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
        <link href="/fontawesome-free-5.13.1-web/css/all.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="/css/styte.css" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/startbootstrap-sb-admin-2/3.3.7+1/css/sb-admin-2.css">
        <link rel="stylesheet" type="text/css"  href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css"/>

    </head>

    <body>
        <!--Menu-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top  navbar-fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="/"><img class="img-logo" src="/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png" alt="logo" />foodtap</a>
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <div class="nav-item search order-0 mx-auto">
                    <form class="form-inline ">
                        <div class="input-group">
                            <input type="text" class="form-control inputsearch" placeholder="Username" />
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary btn-Search rounded" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
                <ul class="navbar-nav">
                    <li class="nav-item media">
                        <img class="mr-3 rounded-circle img-avatar" src="/image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar" />
                        <div class="media-body">
                            <a href="#">Nghia Pham</a>
                        </div>
                    </li>


                    <li class="nav-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white;text-decoration: none;"><i class="fa fa-bell fa-menu" aria-hidden="true" ></i>
                            <span class="badge count-cart">3</span><span class="caret"></span></a>
                        <div class="dropdown-menu dropdown-notification">
                            <div class="notification" style="background-color: #d8dfed;background-clip: border-box;">
                                <span>Mới</span>
                            </div>
                            <div class="notification">
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div>
                                    <div >Truong</div>
                                    <div>1 giờ</div>
                                </div>
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="store-avatar" alt=""/>
                            </div>
                            <div class="notification">
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div>
                                    <div >Truong</div>
                                    <div>1 giờ</div>
                                </div>
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="store-avatar" alt=""/>
                            </div>
                            <div class="notification" style="background-color: #d8dfed;background-clip: border-box;">
                                <span>Trước đó</span>
                            </div>
                            <div class="notification">
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div>
                                    <div >Truong</div>
                                    <div>1 giờ</div>
                                </div>
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="store-avatar" alt=""/>
                            </div>
                            <div class="notification">
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div>
                                    <div >Truong</div>
                                    <div>1 giờ</div>
                                </div>
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="store-avatar" alt=""/>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white;text-decoration: none;"><i class="fa fa-comment fa-menu" aria-hidden="true"></i><span class="badge count-cart">3</span><span class="caret"></span></a>
                        <div class="dropdown-menu dropdown-messenger">
                            <div class="messenger">
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div style="width: 245px;">
                                    <div class="messenger-name">Truong</div>
                                    <div class="messenger-content">đâsdsadasdasd</div>
                                </div>
                                <div>12:00</div>
                            </div>
                            <div class="messenger">
                                <img src="/image/avatar/ban-trai-cua-yaya-truong-nhi-la-ai.jpg" class="messenger-avatar" alt=""/>
                                <div style="width: 245px;">
                                    <div class="messenger-name">Truong</div>
                                    <div class="messenger-content">đâsdsadasdasdsssssssssssssssssssssssssssssssssssssssssssssss</div>
                                </div>
                                <div>12:00</div>
                            </div>
                            <div class="messenger-footer">
                                <span><a  href="#">Xem tất cả</a></span>
                                <span style="float: right;"><a href="#">Đánh dấu đã đọc tất cả</a></span>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>