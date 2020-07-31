
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!--modal post food-->
<div class="modal" id="postModal-food">
    <form action=""  method="POST">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Đăng món</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="post-store rounded">
                        <div class="col-md-12 post-content">
                            <h4>Nhập nội dung</h4>
                            <input type="text" name="restaurant" value="${restaurant._id}" hidden />
                            <textarea class="rounded" name="content" id="" cols="30" rows="5" placeholder="Hãy đăng tin mới nhất về bạn đến mọi người"></textarea>
                            <div class="d-flex" style="width: 100%">
                                <image class="rounded" src ="http://localhost:9032/public/image/" width="100%" height="100%" />
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger" >Đăng tin</button>
                </div>
            </div>
        </div>
    </form>
</div>


<!--modal create menu-->
<div class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" id="mdMenu">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="color: white; background-color: #da484a">
                <h5 class="modal-title">Thêm món mới</h5>
                <button type="button" class="close"  data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/product/postProduct" method="POST" enctype="multipart/form-data">
                    <input name="restaurant" value="${restaurant._id}" type="text" hidden/>
                    <div class="form-group">
                        <label >Tên món ăn:</label>
                        <input name="name" type="text" class="form-control"   />
                    </div>
                    <div class="form-group form-inline">
                        <label>Hình:</label>
                    </div>
                    <div class="upload-img-status">
                        <div class="gallery text-center">
                            <a id="chossefile">
                                <div class="image-frame-upload" style="border: 1px solid blue;width: 15%;height: 85px; background-repeat: no-repeat;background-size: cover">
                                    <span style="position: absolute;color: #5b6dc8;font-size:100px;opacity: 0.7;left: 35px;top: 105px;cursor: pointer">+</span>
                                </div>
                            </a>
                            <div class="desc "><input style="width: 100%; display: none;" type="file" name="multipartFile" class="btn btn-danger img-store-register"/></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Giá:</label>
                        <input name="price" type="number" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Danh mục</label>
                        <!--<select name="" class="form-control select-address-district ">
                                                                <option value=" " disabled selected>Hãy chọn mục từ cửa hàng</option>
                                                                <option value="1 ">Option 1</option>
                                                                <option value="2 ">Option 2</option>
                                                                <option value="3 ">Option 3</option>
                                                            </select>-->
                        <input name="category" placeholder="Chưa có dữ liệu, khoan nhập mục này" type="text" class="form-control" />
                    </div>
                    <button type="submit" class="btn btn-primary" style="float: right;">Thêm</button>
                </form>

            </div>

        </div>
    </div>
</div>

<div class="container" style="margin-top: 100px">
    <!-- Nav tabs -->
    <div class="form-inline" style="margin-bottom: 10px;text-align: end;flex-direction: row-reverse">
        <form>
            <select name="" class="form-control select-address-district ">
                <option value=" " disabled selected>Chọn cửa hàng</option>

                <option value="1 ">Option 1</option>
                <option value="2 ">Option 2</option>
                <option value="3 ">Option 3</option>
            </select>
            <button class="btn btn-primary">Tìm cửa hàng</button>
        </form>
    </div>
    <ul class="nav nav-tabs">

        <li class="nav-item text-center" style="width:25%">
            <a class="nav-link active" data-toggle="tab" href="#order">Đơn hàng</a>
        </li>
        <li class="nav-item text-center" style="width:25%">
            <a class="nav-link" data-toggle="tab" href="#menu">Menu</a>
        </li>
        <li class="nav-item text-center" style="width:25%">
            <a class="nav-link" data-toggle="tab" href="#store-info"> Thông tin</a>
        </li>
        <li class="nav-item text-center" style="width:25%">
            <a class="nav-link " data-toggle="tab" href="#chart">Sơ đồ thống kê</a>
        </li>


    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
        <div class="tab-pane active container" id="order">
            <div class="card shadow mb-4" style="height: 100%;">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold ">Bảng thống kê quản lí đơn hàng</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                            <!-- <div class="row">
                                <div class="col-sm-12 col-md-6">
                                    <div class="dataTables_length" id="dataTable_length"><label>Hiển thị <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> đơn hàng</label></div>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <div id="dataTable_filter" class="dataTables_filter"><label>Tìm kiếm<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label></div>
                                </div>
                            </div> -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table table-bordered dataTable" id="dataTable"  width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Mã đơn hàng: activate to sort column descending" style="width: 195px;">Mã đơn hàng</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="SĐT khách hàng: activate to sort column ascending" style="width: 294px;">Tên đơn hàng</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Ngày gửi: activate to sort column ascending" style="width: 142px;">Ngày gửi</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Ngày nhận: activate to sort column ascending" style="width: 140px;">Ngày nhận</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Đơn giá: activate to sort column ascending" style="width: 131px;">Đơn giá</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Tình trạng: activate to sort column ascending" style="width: 121px;">Tình trạng</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <c:forEach var="item" items="${restaurants.orders}">
                                                <tr role="row" class="odd">
                                                    <td class="sorting_1">${item._id}</td>
                                                    <td>Accountant</td>
                                                    <td>Tokyo</td>
                                                    <td>33</td>
                                                    <td>2008/11/28</td>
                                                    <td>$162,700</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- <div class="row">
                                <div class="col-sm-12 col-md-5">
                                    <div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                                </div>
                                <div class="col-sm-12 col-md-7">
                                    <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                                        <ul class="pagination">
                                            <li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                            <li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                            <li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane container" id="chart">
            <canvas id="myChart">
            </canvas>
            <div class="row">

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Kiếm (Hàng tháng)</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Kiếm (Hàng năm)</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Nhiệm vụ</div>
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-auto">
                                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                        </div>
                                        <div class="col">
                                            <div class="progress progress-sm mr-2">
                                                <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">yêu cầu cần xử lý</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-comments fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane  container" id="store-info" style="max-width: 100% !important;">
            <!--Content-->
            <div class="container store-info" style="margin-top: 20px;">
                <div class="text-center ">
                    <h1>Thông tin cửa hàng</h1>    
                </div>
                <hr/>
                <div class="row h-100">
                    <div class="col-md-6">
                        <div class="fix-store">   
                            <div class="form-group form-control text-center" style="width: 50% !important; margin-left: 190px">
                                <a id="chossefile">

                                    <div class="image-frame-upload" style="border: 1px solid blue;width: 100%;height: 240px; background-size: cover; background-repeat: no-repeat">

                                        <span style="position: absolute;margin-top: 21px;color: #5b6dc8;font-size: 100px;opacity: 0.7;margin-left: -30px;cursor: pointer">+</span>
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
                                <label class="col-md-3"> Mở cửa</label>

                                <div class="col-md-9 input-group-prepend">
                                    <input  type="text" class="form-control"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3"> Đóng cửa</label>

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

                                        <span style="position: absolute;margin-top: 21px;color: #5b6dc8;font-size: 100px;opacity: 0.7;margin-left: -30px; cursor: pointer">+</span>
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
        <div class="tab-pane container" id="menu" style="max-width: 100% !important;">
            <div class="mb-4 form-inline" style="margin-top: 10px;text-align: start;">
                <button class="btn btn-info btn-icon-split" style="margin-left: 10px;" data-toggle="modal" data-target="#mdMenu"><i class="fas fa-file-medical" ></i> Thêm</button>
                <select name="" class="form-control " style="margin-left: 10px">
                    <option value=" " disabled selected>Hãy chọn mục từ cửa hàng</option>
                    <option value="1 ">Option 1</option>
                    <option value="2 ">Option 2</option>
                    <option value="3 ">Option 3</option>
                </select>
            </div>

            <div class="card shadow mb-4" style="height: 100%;">
                <div class="card-body">
                    <div class="">
                        <table id="dtmenu" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Ảnh</th>
                                    <th>Tên món</th>
                                    <th>Danh mục</th>
                                    <th>Giá</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody class="text-center">
                                <c:forEach var="item" items="${restaurant.menus}">
                                    <tr role="row" class="even">
                                        <td><a href=""><image src="http://localhost:9032/public/image/${item.image}"  style="width: 100px; height: 100px"/></a></td>
                                        <td><a href="">${item.name} </a></td>
                                        <td>Danh mục</td>
                                        <td>${item.price} VND</td>
                                        <td>
                                            <div class="d-flex justify-content-md-center"> 
                                                <button  type="button" class="btn btn-success">CẬP NHẬT</button>
                                                <button  type="button" idValue="${item._id}" class="btn btn-danger postFoodNewFeed" data-toggle="modal" data-target="#postModal-food">ĐĂNG TIN</button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
</div>
<!--Bootstrap-->
<script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
<script src="/public/js/jquery/jquery.min.js "></script>
<script src="/public/js/bootstrap/popper.min.js "></script>
<script src="/public/js/bootstrap/bootstrap.min.js "></script>
<script src="/public/js/sb-admin-2.min.js"></script>
<script src="/public/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
<script src="/public/js/datatables-demo.js  "></script>
<script src="/public/js/Chart.min.js"></script>
<script src="/public/js/swiper.min.js"></script>
<script src="/public/js/script.js "></script>
<script>
    var progress = document.getElementById('animationProgress');
    let myChart = document.getElementById('myChart').getContext('2d');
    // Global options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    Chart.defaults.global.defaultFontSize = 20;
    Chart.defaults.global.defaultFontColor = '#777';
    var chart = new Chart(myChart, {
        type: 'line',
        data: {
            labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
            datasets: [{
                    label: ['Doanh thu'],
                    data: [
                        100,
                        200,
                        223,
                        50,
                        80,
                        70,
                        90,
                        179,
                        190,
                        150,
                        30,
                        22,
                    ],
                    backgroundColor: 'rgba(0, 0, 0, 0)',
                    borderWidth: 2,
                    borderColor: '#da484a',
                    hoverborderWidth: 3,
                    hoverborderColor: '#000',
                }],
        },
        options: {
            title: {
                display: 'true',
                text: 'Doanh thu của bạn trong một năm',
                fontSize: 30,
                fontStyle: 'bold',
            },
            legend: {
                display: 'true',
                position: 'right',
                labels: {
                    fontColor: '#000',
                }
            },
            layout: {
                padding: {
                    left: 50,
                    right: 0,
                    bottom: 50,
                    top: 50,
                },
            },
            animation: {
                duration: 2000,
                easing: 'linear',
            },
        },
    });
</script>
</body>

</html>