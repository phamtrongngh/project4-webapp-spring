
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<a onclick="topFunction()" id="myBtn" title="Go to top">Top</a>
<!-- The Modal vị trí-->
<div class="modal" id="mapModeluserupdate">
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
<!-- Modal change pass-->
<div class="modal fade" role="dialog" id="Modelmatkhau">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"> Đổi mật khẩu</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>Mật khẩu cũ</label>
                        <input type="email" class="form-control" placeholder="Nhập mật khẩu cũ">
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu mới</label>
                        <input type="password" class="form-control"  placeholder="Nhập mật khẩu mới">
                    </div>
                    <div class="form-group">
                        <label>Nhập lại mật khẩu mới</label>
                        <input type="password" class="form-control"  placeholder="Nhập lại mật khẩu mới">
                    </div>
                    <button type="submit" class="btn btn-primary">Chấp nhận</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!--Content-->

<div style="margin-top: 100px;">
    <div class="container-fluid bg-light text-dark">
        <div class="row justify-content-center">
            <h1>Thông tin của bạn</h1>    
        </div>
        <hr/>
        <div class="row justify-content-center h-100">
            <div class="col col-sm-6 col-md-7 col-lg-4 col-xl-6 h-100">
                <form action="">   
                    <div class="form-group form-control mx-auto text-center">
                        <a id="chossefile">

                            <div class="image-frame-upload" style="border: 1px solid blue;width: 100%;height: 240px; background-size: cover; background-repeat: no-repeat">

                                <span style="position: absolute;margin-top: 21px;color: #5b6dc8;font-size: 100px;opacity: 0.7;margin-left: -30px;">+</span>
                            </div>
                        </a>
                        <div class="desc ">Chọn ảnh đại diện <input style="width: 100%; display: none;" type="file" name="multipartFile" class="btn btn-danger img-store-register"/></div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3">Họ và tên</label>

                        <div class="col-md-9 input-group-prepend">
                            <input  type="text" class="form-control input-address"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3">SĐT</label>
                        <div class="col-md-9 input-group-prepend">
                            <input  type="text" class="form-control input-address" readonly="true"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3">Địa chỉ</label>

                        <div class="col-md-9 input-group-prepend">
                            <input  type="text" class="form-control input-address" readonly="true"/>
                            <button style="color: #da484a" type="button" class="input-group-text btn-location" data-toggle="modal" data-target="#mapModeluserupdate" ><i class="fas fa-map-marker-alt"></i></button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="container">
                            <div class="row">
                                <div class="col"><button class="col-7 btn btn-secondary btn-sm float-left" data-toggle="modal" data-target="#Modelmatkhau" type="button">Đổi mật khẩu</button></div>
                                <div class="col"><button class="col-6 btn btn-primary btn-sm float-right">Thay đổi</button></div>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

</div>

<script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
<script src="/public/js/jquery/jquery.min.js "></script>
<script src="/public/js/bootstrap/popper.min.js "></script>
<script src="/public/js/bootstrap/bootstrap.min.js "></script>
<script src="/public/js/swiper.min.js "></script>
<script src="/public/js/jquery-ui.js"></script>
<script src="/public/js/script.js "></script>

</body>
</html>