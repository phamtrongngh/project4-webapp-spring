<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!-- The Modal location-->
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
                <button type="button" class="btn btn-danger" data-dismiss="modal">Chấp nhận</button>
            </div>
        </div>
    </div>
</div>

<!--Content-->
<div class="container store-info" style="margin-top: 100px;">
    <div class="text-center ">
        <h1>Thông tin cửa hàng</h1>    
    </div>
    <hr/>
    <div class="row h-100">
        <div class="col-md-6">
            <div class="fix-store">   
                <div class="form-group form-control text-center" style="width: 50% !important; margin-left: 268px">
                    <a id="chossefile">

                        <div class="image-frame-upload" style="border: 1px solid blue;width: 100%;height: 240px; background-size: cover; background-repeat: no-repeat">

                            <span style="position: absolute;margin-top: 21px;color: #5b6dc8;font-size: 100px;opacity: 0.7;margin-left: -30px;">+</span>
                        </div>
                    </a>
                    <div class="desc ">Chọn ảnh cửa hàng <input style="width: 100%; display: none;" type="file" name="multipartFile" class="btn btn-danger img-store-register"/></div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3">Tên cửa hàng</label>

                    <div class="col-md-9 input-group-prepend">
                        <input  type="text" class="form-control "  >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3">SĐT</label>
                    <div class="col-md-9 input-group-prepend">
                        <input  type="text" class="form-control " readonly="true" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3">Địa chỉ</label>

                    <div class="col-md-9 input-group-prepend">
                        <input  type="text" class="form-control " readonly="true" >
                        <button type="button" class="input-group-text btn-location" data-toggle="modal" data-target="#mapModeluserupdate" ><i class="fas fa-map-marker-alt"></i></button>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3">Thông tin mô tả</label>

                    <div class="col-md-9 input-group-prepend">
                        <input  type="text" class="form-control"  >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3">Thời gian mở cửa</label>

                    <div class="col-md-9 input-group-prepend">
                        <input  type="text" class="form-control"  >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3">Thời gian đóng cửa</label>

                    <div class="col-md-9 input-group-prepend">
                        <input  type="text" class="form-control"  >
                    </div>
                </div>



            </div>
        </div>
        <div class="col-md-6">
            <div class="add-paper">   
                <div class="form-group form-control text-center" style="width: 50% !important;margin-left: 178px">
                    <a id="chossefile">

                        <div class="image-frame-upload" style="border: 1px solid blue;width: 100%;height: 240px; background-size: cover; background-repeat: no-repeat">

                            <span style="position: absolute;margin-top: 21px;color: #5b6dc8;font-size: 100px;opacity: 0.7;margin-left: -30px;">+</span>
                        </div>
                    </a>
                    <div class="desc ">Thêm giấy phép bán hàng <input style="width: 100%; display: none;" type="file" name="multipartFile" class="btn btn-danger img-store-register"/></div>
                </div>
                <h2>Chú ý:</h2>   
                <p>- Bạn chưa có giấy phép kinh doanh<br/>- Nếu chưa có giấy phép bạn có thể hoàn tất đăng ký nhưng sẽ ít khách hàng tin tưởng hơn. Chúng tôi khuyên bạn nên đăng ký giấy phép kinh doanh</p>
            </div>
        </div>

    </div>
    <div style="width: 100%;padding-left: 50%">
        <button class="col-6 btn btn-primary btn-sm float-right">Thay đổi</button>
    </div>

</div>

</div>


<!--Bootstrap-->
<script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
<script src="/public/js/jquery/jquery.min.js "></script>
<script src="/public/js/bootstrap/popper.min.js "></script>
<script src="/public/js/bootstrap/bootstrap.min.js "></script>
<script src="/public/js/swiper.min.js "></script>
<script src="/public/js/jquery-ui.js"></script>
<script src="/public/js/script.js "></script>

</body>
</html>