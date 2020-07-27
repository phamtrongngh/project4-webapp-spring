
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!-- The Modal -->
<div class="modal" id="mapModel-regi">
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
<div class="container registerstore border rounded shadow-sm" style="margin-top:100px;padding-left: 0;padding-right: 0;">
    <ul class="nav nav-tabs flex-nowrap text-center" role="tablist" >
        <li role="presentation" class="nav-item" style="width:50%">
            <a href="#step1" class="nav-link active" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">Bước 1 </a>
        </li>
        <li role="presentation" class="nav-item" style="width:50%">
            <a href="#step2" class="nav-link disabled" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">Bước 2 </a>
        </li>

    </ul>
    <form action="/createRestaurant"  method="POST" enctype="multipart/form-data">
        <div class="tab-content py-2 " >
            <div class="tab-pane active" role="tabpanel" id="step1">
                <h3 class="font-margin text-center">Nhập thông tin</h3>
                <div class="form-group">

                    <div class="gallery">
                        <a id="chossefile">

                            <div class="image-frame-upload" style="border: 1px solid blue;width: 100%;height: 240px; background-size: cover; background-repeat: no-repeat">

                                <span style="position: absolute;margin-top: 21px;color: #5b6dc8;font-size: 100px;opacity: 0.7;margin-left: -30px;">+</span>
                            </div>
                        </a>
                        <div class="desc ">Chọn ảnh đại diện <input style="width: 100%; display: none;" type="file" name="multipartFile" class="btn btn-danger img-store-register"/></div>
                    </div>
                </div>
                <div class="form-group form-inline">
                    <label>Tên cửa hàng:</label>
                    <input type="text" name="name" class="form-control input-namestore"/>

                </div>
                <div class="form-group form-inline">
                    <label>Thông tin giới thiệu:</label>
                    <input type="text" name="description" class="form-control input-info"/>
                </div>
                <div class="form-group form-inline">
                    <label>Chọn danh mục:</label>
                    <select class="form-control select-species">
                        <option value=" " >Chọn danh mục</option>
                        <option value="1 ">Option 1</option>
                        <option value="2 ">Option 2</option>
                        <option value="3 ">Option 3</option>
                    </select>
                </div>

                <div class="form-group form-inline">
                    <label>Địa chỉ cửa hàng</label>
                    <div class="input-group flex-nowrap" style="width: 46.5%">
                        <input type="text" class="form-control input-address" >
                        <div class="input-group-prepend">
                            <button type="button" class="input-group-text btn-location" data-toggle="modal" data-target="#mapModel-regi" ><i class="fas fa-map-marker-alt"></i></button>
                        </div>
                    </div>
                </div>
                <div class="form-group form-inline">
                    <label>Họ tên người liên hệ:</label>
                    <input type="text" class="form-control input-name-user"/>
                </div>
                <div class="form-group form-inline">
                    <label>Số điện thoại:</label>
                    <input type="text" class="form-control input-phones"/>
                </div>

                <ul class="float-right">
                    <li class="list-inline-item">
                        <button type="button" class="btn btn-danger next-step">Tiếp tục</button>
                    </li>
                </ul>
            </div>
            <div class="tab-pane" role="tabpanel" id="step2">
                <h3 class="font-margin text-center">Chọn ảnh giấy phép bán hàng</h3>

                <div class="form-group row">
                    <div class="form-control col-md-7" style="width: 60%" >
                        <a id="chossefile-giayphep">
                            <div class="image-frame-upload d-flex justify-content-center align-items-md-center" style="border: 1px solid blue; background-size: cover;width: 100%;height: 300px;">
                                <span style="margin-top: -20px;color: #5b6dc8;font-size: 100px;opacity: 0.7">+</span>
                            </div>
                        </a>

                        <div class="desc " style="display: none;"> <input type="file" name="multipartFile" class="btn btn-danger img-giayphep"/></div>

                    </div>
                    <div class="col-md-5">
                        <h2>Chú ý:</h2>
                        <div>
                            <p>- Giấy phép kinh doanh của bạn sẽ được chúng tôi kiểm duyêt.</p>
                            <p>- Nếu chưa có giấy phép bạn có thể hoàn tất đăng ký nhưng sẽ ít khách hàng tin tưởng hơn. CHúng tôi khuyên bạn nên đăng ký giấy phép kinh doanh</p>
                        </div>
                    </div>

                </div>


                <ul class="float-right">
                    <li class="list-inline-item">
                        <button type="button" class="btn btn-outline-danger prev-step">Quay lại</button>
                    </li>
                    <li class="list-inline-item">
                        <button id="submit-create-restaurant" type="submit" class="btn btn-danger btn-info-full next-step">Hoàn thành</button>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </form>

</div>
<script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
<script src="/public/js/jquery/jquery.min.js "></script>
<script src="/public/js/bootstrap/popper.min.js "></script>
<script src="/public/js/bootstrap/bootstrap.min.js "></script>
<script src="/public/js/swiper.min.js "></script>
<script src="/public/js/script.js "></script>

</body>
</html>
