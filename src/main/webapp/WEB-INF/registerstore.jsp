
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerstore.jsp" %>

<div class="container registerstore border rounded shadow-sm" style="margin-top:100px ">
    <ul class="nav nav-tabs flex-nowrap text-center" role="tablist">
        <li role="presentation" class="nav-item" style="width:34%">
            <a href="#step1" class="nav-link active" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">Step 1 </a>
        </li>
        <li role="presentation" class="nav-item" style="width:34%">
            <a href="#step2" class="nav-link disabled" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">Step 2 </a>
        </li>
        <li role="presentation" class="nav-item" style="width:34%">
            <a href="#step3" class="nav-link disabled" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">Step 3 </a>
        </li>
       
    </ul>
    <div class="tab-content py-2 ">
        <div class="tab-pane active"  role="tabpanel" id="step1">
            <h3 class="font-margin text-center">Chọn ảnh đại diện</h3>
            <form>
                <div class="form-group">
                    <div class="gallery">
                        <div style="background-color: grey;width: 100%;height: 300px;">
                        </div>
                        <div class="desc "> <input type="file" class="btn btn-danger"/></div>
                    </div>
                </div>
            </form>
            <button type="button" class="btn btn-danger next-step float-right">Tiếp tục</button>
        </div>
        <div class="tab-pane" role="tabpanel" id="step2">
              <h3 class="font-margin text-center">Nhập thông tin</h3>
            <form>
                <div class="form-group form-inline">
                    
                    <label>Tên cửa hàng:</label>
                    <input type="text" class="form-control input-namestore"/>
                </div>
                <div class="form-group form-inline">
                    <label>Thông tin mô tả:</label>
                    <input type="text" class="form-control input-info"/>
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
                <div class="form-inline">
                       <div class="form-group ">
                        <select class="form-control select-address-ward  ">
                            <option value=" " disabled selected>Xã/Phường</option>
                            <option value="1 ">Option 1</option>
                            <option value="2 ">Option 2</option>
                            <option value="3 ">Option 3</option>
                        </select>
                    </div>
                     <div class="form-group container-city">
                        <select class="form-control select-address">
                            <option value=" " disabled selected>Tỉnh/Thành phố</option>
                            <option value="1 ">Option 1</option>
                            <option value="2 ">Option 2</option>
                            <option value="3 ">Option 3</option>
                        </select>
                    </div>
                </div>
                <div class="form-inline">
                   
                 <div class="form-group container-district">
                        <select class="form-control  select-address-district ">
                            <option value=" " disabled selected>Quận/Huyện</option>
                            <option value="1 ">Option 1</option>
                            <option value="2 ">Option 2</option>
                            <option value="3 ">Option 3</option>
                        </select>
                    </div>
                    <div class="form-group container-address">
                        <input type="text" placeholder="Đường, số nhà " class="form-control input-address " />
                    </div>
                </div>
                <div class="form-inline">
                    <div class="form-group">
                        <label>Họ tên người liên hệ:</label>
                        <input type="text" class="form-control"/>
                    </div>
                    <div class="form-group input-phone">
                        <label>Số điện thoại:</label>
                        <input type="text" class="form-control"/>
                    </div>
                </div>
            </form>
            <ul class="float-right">
                <li class="list-inline-item">
                    <button type="button" class="btn btn-outline-danger prev-step">Quay lại</button>
                </li>
                <li class="list-inline-item">
                    <button type="button" class="btn btn-danger next-step">Tiếp tục</button>
                </li>
            </ul>
        </div>
        <div class="tab-pane" role="tabpanel" id="step3">
          <h3 class="font-margin text-center">Chọn ảnh giấy phép bán hàng</h3>
            <form>
                <div class="form-group">
                    <div class="gallery">
                        <div style="background-color: grey;width: 100%;height: 300px;">
                        </div>
                        <div class="desc "> <input type="file" class="btn btn-danger"/></div>
                    </div>
                </div>
            </form>
            <ul class="float-right">
                <li class="list-inline-item">
                    <button type="button" class="btn btn-outline-danger prev-step">Quay lại</button>
                </li>
                <li class="list-inline-item">
                    <button type="button" class="btn btn-danger btn-info-full next-step">Hoàn thành</button>
                </li>
            </ul>
        </div>
      
        <div class="clearfix"></div>
    </div>
</div>
<script src="/public/js/jquery/jquery.min.js "></script>
<script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
<script src="/public/js/bootstrap/popper.min.js "></script>
<script src="/public/js/bootstrap/bootstrap.min.js "></script>
<script src="/public/js/swiper.min.js "></script>
<script src="/public/js/script.js "></script>

<script>


</script>
</body>
</html>
