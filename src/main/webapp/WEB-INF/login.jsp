<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <!--CSS-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/public/fontawesome-free-5.13.1-web/fonts/mvboli.ttf" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
        <link href="/public/fontawesome-free-5.13.1-web/css/all.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="/public/css/styte.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/startbootstrap-sb-admin-2/3.3.7+1/css/sb-admin-2.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.min.css" />
    </head>

    <body>
        <!-- The Modal -->
        <div class="modal" id="mapModel">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title"> Bản đồ</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" >Chấp nhận</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container login">
            <div class="row login-row">
                <div class="col-lg-1 col-md-1 col-sm-1 login-food d-flex align-items-md-center">
                    <div>
                        <img src="/public/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png" class="img-login-logo" alt="" />
                        <h1>Food<br/>tap</h1>
                        <img src="/public/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png" class="img-login-logo" alt="" />
                    </div>
                </div>

                <div class="col-lg-8 col-md-8  login-sign">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs justify-content-center text-center" >
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#login">Đăng Nhập</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#register">Tạo Tài Khoản</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content " style="height: 100%">
                        <div class="tab-pane container active login-in text-center" id="login"> 
                            <div class="search-background">
                                <img src="/public/image/Background/33367357.jpg" width="100%"/>
                            </div>
                            <div class="login-container">
                                <form class="login-form " id="commentForm" action="/login" method="POST">
                                    <div class="form-group ">
                                        <input type="text" name="phone" class="form-control " placeholder="SĐT "  />
                                    </div>
                                    <div class="form-group ">
                                        <input type="password" name="password" class="form-control " placeholder="Mật Khẩu " />
                                    </div>
                                    <div>
                                        <button class="btn btn-danger form-control btn-login ">Đăng nhập</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane container fade" id="register">
                            <div class="search-background">
                                <img src="/public/image/Background/33367357.jpg" width="100%">/
                            </div>
                            <div class="login-container">
                                <form class="login-form"  action="/register" method = "POST">
                                    <div class="form-group ">
                                        <input type="text" name="fullname" class="form-control input-name" placeholder="Họ tên" />
                                    </div>
                                    <div class="form-group ">
                                        <input type="text" name="phone" class="form-control input-phone" placeholder="SĐT " />
                                    </div>
                                    <div class="form-group ">
                                        <input type="password" name="password" class="form-control input-phone" placeholder="Mật khẩu" />
                                    </div>
                                    <div class="form-group ">
                                        <label >Giới tính: </label><br/>
                                        <input type="radio" name="gender" value="false" class="input-male" checked/><label style="margin-left: 10px; ">Nam</label>
                                        <input type="radio" name="gender" value="true" class="input-female" /><label style="margin-left: 10px; ">Nữ</label>
                                    </div>
                                    <div class="form-group form-inline">
                                        <div class="input-group flex-nowrap" style="width: 94.5%">
                                            <input type="text" class="form-control input-address" >
                                            <div class="input-group-prepend">
                                                <button type="button" class="input-group-text btn-location" data-toggle="modal" data-target="#mapModel" ><i class="fas fa-map-marker-alt"></i></button>
                                            </div>
                                        </div>

                                    </div>
                                    <br/>
                                    <div class="text-center">
                                        <button class="btn btn-danger form-control btn-register">Đăng Ký</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1 col-md-1  login-foods d-flex align-items-md-center ">
                    <div class="text ">
                        <img src="/public/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png " class="img-login-logo " alt=" " />
                        <h1>one<br/>tap<br/>for<br/>all<br/>foods</h1>
                        <img src="/public/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png " class="img-login-logo " alt=" " />
                    </div>
                </div>
            </div>
        </div>

        <!--Bootstrap-->
        <script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
        <script src="/public/js/jquery/jquery.min.js"></script>
        <script src="/public/js/bootstrap/popper.min.js "></script>
        <script src="/public/js/bootstrap/bootstrap.min.js "></script>
        <script src="/public/js/swiper.min.js "></script>
        <script src="/public/js/script.js "></script>

    </body>

</html>