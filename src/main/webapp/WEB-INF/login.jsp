<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <!--CSS-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/fontawesome-free-5.13.1-web/fonts/mvboli.ttf" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
        <link href="/fontawesome-free-5.13.1-web/css/all.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="/css/styte.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.min.css" />
    </head>

    <body>
        <form action="/login" method="POST">
            <button>SUBMIT</button>
        </form>
        <form action="/logout" method="POST">
            <button>Logout</button>
        </form>
        <p class="text-center login-hello">Chào mừng bạn đến food tap</p>
        <div class="container login">
            <div class="row login-row">
                <div class="col-md-1 col-sm-3 login-food">
                    <div>
                        <img src="/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png" class="img-login-logo" alt="" />
                    </div>
                    <div>
                        <h1>Food<br/>tap</h1>
                    </div>
                    <div>
                        <img src="/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png" class="img-login-logo" alt="" />
                    </div>
                </div>
                <br/>
                <div class="col-md-5 col-sm-9 login-sign">
                    <div class="login-labal">
                        <h1>Đăng Nhập</h1>
                    </div>
                    <div class="login-container">
                        <form class="login-form">
                            <div class="form-group ">
                                <input type="text" class="form-control " placeholder="SĐT " />
                            </div>
                            <div class="form-group ">
                                <input type="text" class="form-control " placeholder="Mật Khẩu " />
                            </div>

                            <button class="btn btn-danger form-control btn-login ">Đăng nhập</button>

                        </form>
                    </div>

                </div>
                <div class="col-md-5 col-sm-9 login-account ">
                    <div class="login-labal ">
                        <h1>Tạo Tài Khoản</h1>
                    </div>
                    <div class="login-container">
                        <form class="login-form">
                            <div class="form-group ">
                                <input type="text" class="form-control input-name" placeholder="Họ tên" />
                            </div>
                            <div class="form-group ">
                                <input type="text" class="form-control input-phone" placeholder="SĐT " />
                            </div>
                            <div class="form-grop ">
                                <label >Giới tính: </label><br/>
                                <input type="radio" name="gender" class="input-male" checked/><label style="margin-left: 10px; ">Nam</label>
                                <input type="radio" name="gender" class="input-female" /><label style="margin-left: 10px; ">Nữ</label>
                            </div>
                            <div>
                                <label >Địa chỉ: </label><br/>
                                <div class="form-inline ">
                                    <select class="form-control select-address ">
                                        <option value=" " disabled selected>Tỉnh/Thành phố</option>
                                        <option value="1 ">Option 1</option>
                                        <option value="2 ">Option 2</option>
                                        <option value="3 ">Option 3</option>
                                    </select>
                                    <select class="form-control select-address-district ">
                                        <option value=" " disabled selected>Quận/Huyện</option>
                                        <option value="1 ">Option 1</option>
                                        <option value="2 ">Option 2</option>
                                        <option value="3 ">Option 3</option>
                                    </select>
                                </div>
                            </div>
                            <br/>
                            <div>
                                <div class="form-inline ">
                                    <select class="form-control select-address ">
                                        <option value=" " disabled selected>Xã/Phường</option>
                                        <option value="1 ">Option 1</option>
                                        <option value="2 ">Option 2</option>
                                        <option value="3 ">Option 3</option>
                                    </select>
                                    <input type="text" placeholder="Đường, số nhà " class="form-control input-address " />
                                </div>
                            </div><br/>
                            <div>
                                <button class="btn btn-danger form-control btn-register">Đăng Ký</button>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="col-md-1 col-sm-3 login-foods ">
                    <div class="text">
                        <div>
                            <img src="/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png " class="img-login-logo " alt=" " />
                        </div>
                        <div>
                            <h1>one<br/>tap<br/>for<br/>all<br/>foods</h1>
                        </div>
                        <div>
                            <img src="/image/logo/7bb4b065-907a-40b6-9b64-0440362db8d3_200x200.png " class="img-login-logo " alt=" " />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Bootstrap-->
        <script src="/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
        <script src="/js/bootstrap/popper.min.js "></script>
        <script src="/js/bootstrap/bootstrap.min.js "></script>
        <script src="/js/jquery/jquery.min.js "></script>
        <script src="js/swiper.min.js "></script>
        <script src="/js/script.js "></script>
    </body>

</html>