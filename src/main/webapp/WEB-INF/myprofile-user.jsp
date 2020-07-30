<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<!--Modal like and don nhap-->
<div class="modal fade" id="Modalheartdraft" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document" style="max-width:40%!important;">

        <div class="modal-content">

            <div class="modal-body">
                <ul class="nav nav-tabs flex-nowrap text-center" role="tablist" >
                    <li role="presentation" class="nav-item" style="width:50%">
                        <a href="#stepheart" class="nav-link  active" data-toggle="tab" aria-controls="stepheart" role="tab" title="Yêu Thích"><i class="fas fa-heart"></i> Yêu thích</a>
                    </li>
                    <li role="presentation" class="nav-item" style="width:50%">
                        <a href="#stepdraft" class="nav-link" data-toggle="tab" aria-controls="stepdraft" role="tab" title="Đơn nháp"><i class="far fa-bookmark"></i> Đơn nháp: </a>
                    </li>
                </ul>
                <div class="tab-content py-2 "  style="height: 400px;overflow-y: auto;overflow-x: hidden;padding-right: 10px;">
                    <div class="tab-pane " role="tabpanel" id="stepheart">
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class=" img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <span>ádasdsa</span>
                            </div>
                        </div>
                        
                    </div>
                    <div class="tab-pane" role="tabpanel" id="stepdraft">
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="img-like" />
                            </div>
                            <div class="col-md-4 item-hover">
                                
                                    <div>Bánh mì bảo Quyên</div>
                                    <span>2 món</span> (<span>20.000</span>VNĐ)
                                    <div class="tip ">
                                        <div class="row">
                                            <div class="col">
                                            <span>2</span>x<span>Gà gán</span>
                                        </div>
                                        <div class="col">
                                            <span>10,000</span>VNĐ
                                        </div>
                                        </div>
                                    </div>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn">Đặt lại</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Modal like and share-->

<div class="modal fade" id="Modallikeshare" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document" style="max-width:40%!important;">

        <div class="modal-content">

            <div class="modal-body">
                <ul class="nav nav-tabs flex-nowrap text-center" role="tablist" >
                    <li role="presentation" class="nav-item" style="width:50%">
                        <a href="#steplike" class="nav-link active" data-toggle="tab" aria-controls="steplike" role="tab" title="Like"><i class="fas fa-heart"></i> Lượt thích: <span>500</span></a>
                    </li>
                    <li role="presentation" class="nav-item" style="width:50%">
                        <a href="#stepshare" class="nav-link" data-toggle="tab" aria-controls="stepshare" role="tab" title="Share"><i class="fas fa-share-alt"></i> Lượt chia sẻ: <span>600</span></a>
                    </li>
                </ul>
                <div class="tab-content py-2 "  style="height: 400px;overflow-y: auto;overflow-x: hidden;padding-right: 10px;">
                    <div class="tab-pane active" role="tabpanel" id="steplike">
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fab fa-facebook-messenger"></i> Nhắn tin</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="stepshare">
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fab fa-facebook-messenger"></i> Nhắn tin</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- The Modal bản đồ -->

<div class="modal" id="mapModal-users" >
    <div class="modal-dialog" style="width: 450px;">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title"> Bản đồ</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div id="map"></div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Chấp nhận</button>
            </div>
        </div>
    </div>
</div>
<!-- The Modal post -->
<div class="modal" id="postModal-users">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Đăng món</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div></div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Chấp nhận</button>
            </div>
        </div>
    </div>
</div>
<!-- The Modal comment -->
<div class="modal" id="orderModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Món ăn bạn muốn chọn</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="container contain">
                    <div class="row">
                        <div class=" info-product">
                            <img class="rounded img-status" src="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" alt="" />
                            <div>
                                <h1 class="title-food">Kem trái cây rừng </h1>
                                <div class="rate text-center">
                                    <div class="stars">
                                        <form action="">
                                            <input class="star star-5" id="star-5" type="radio" name="star" />
                                            <label class="star star-5" for="star-5"></label>
                                            <input class="star star-4" id="star-4" type="radio" name="star" />
                                            <label class="star star-4" for="star-4"></label>
                                            <input class="star star-3" id="star-3" type="radio" name="star" />
                                            <label class="star star-3" for="star-3"></label>
                                            <input class="star star-2" id="star-2" type="radio" name="star" />
                                            <label class="star star-2" for="star-2"></label>
                                            <input class="star star-1" id="star-1" type="radio" name="star" />
                                            <label class="star star-1" for="star-1"></label>
                                        </form>

                                    </div>
                                    <div class="text-like">14k lượt thích</div>
                                </div>
                                <p>Với 7 loại trái cây rung ngon thơm ngọt lịm: dâu, táo, cherry, hạnh nhân... Giúp bạn giải tỏa căng thẳng trong những ngày hè đầy áp lực...</p>
                            </div>
                            <div class="rounded box-quantity mx-auto">
                                <p class="form-inline quantity">
                                    Số lượng :

                                    <input aria-label="quantity" class="input-qty" min="1" max="999" name="" type="number" value="1" />

                                </p>
                                <p class="price-food">Giá : <span class="price-foodnumber">22.000</span></p>
                                <p class="total-food">Thành tiền : <span class="total-foodnumber">22.000</span></p>
                            </div>

                            <div class="rate-content">
                                <ul class="comments-list first navbar-nav">
                                    <li class="comment nav-item">
                                        <a class="pull-left" href="#">
                                            <img class="avatar" src="/public/image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar" />
                                        </a>
                                        <div class="comment-body">
                                            <div class="comment-heading">
                                                <h4 class="user">Gavino Free</h4>
                                                <h5 class="time">5 minutes ago</h5>
                                                <div class="report dropright">
                                                    <a href="#" class="" data-toggle="dropdown"> <i class="fas fa-ellipsis-h" aria-hidden="true"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="#">Ẩn bình luận</a>
                                                        <a class="dropdown-item" href="#">Báo cáo</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <p>Mem mem<br/>
                                                <a href="#">Thích</a>

                                            <div id="reply1" class="collapse">
                                                <div class="input-group" style="margin-left: -60px;">
                                                    <a class="pull-left" href="#">
                                                        <img class="avatar" src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
                                                    </a>
                                                    <input class="form-control input-comments" placeholder="Add a comment" type="text" />
                                                    <button class="input-group-addon">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                </div>
                                            </div>
                                            </p>
                                        </div>
                                        <ul class="comments-list navbar-nav">
                                            <li class="comment">
                                                <a class="pull-left" href="#">
                                                    <img class="avatar" src="/public/image/avatar/Hot-Food-Logo-991x991.jpg" alt="avatar" />
                                                </a>
                                                <div class="comment-body">
                                                    <div class="comment-heading">
                                                        <h4 class="user">Ryan Haywood</h4>
                                                        <h5 class="time">3 minutes ago</h5>
                                                        <div class="report dropright">
                                                            <a href="#" class="" data-toggle="dropdown"> <i class="fas fa-ellipsis-h" aria-hidden="true"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">Ẩn bình luận</a>

                                                                <a class="dropdown-item" href="#">Báo cáo</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p>Relax my friend
                                                        <br/>
                                                        <a href="#">Thích</a>

                                                    <div id="reply2" class="collapse">
                                                        <div class="input-group" style="margin-left: -60px;">
                                                            <a class="pull-left" href="#">
                                                                <img class="avatar" src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
                                                            </a>
                                                            <input class="form-control input-comments" placeholder="Add a comment" type="text" />
                                                            <button class="input-group-addon">
                                                                <i class="fa fa-edit"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    </p>
                                                </div>
                                            </li>
                                            <li class="comment">
                                                <a class="pull-left" href="#">
                                                    <img class="avatar" src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
                                                </a>
                                                <div class="comment-body">
                                                    <div class="comment-heading">
                                                        <h4 class="user">Gavino Free</h4>
                                                        <h5 class="time">3 minutes ago</h5>
                                                        <div class="report dropright">
                                                            <a href="#" class="" data-toggle="dropdown"> <i class="fas fa-ellipsis-h" aria-hidden="true"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">Ẩn bình luận</a>

                                                                <a class="dropdown-item" href="#">Báo cáo</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p>Ok, cool. <br/>

                                                        <a href="#">Thích</a>


                                                    <div id="reply3" class="collapse">
                                                        <div class="input-group" style="margin-left: -60px;">
                                                            <a class="pull-left" href="#">
                                                                <img class="avatar" src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
                                                            </a>
                                                            <input class="form-control input-comments" placeholder="Add a comment" type="text" />
                                                            <button class="input-group-addon">
                                                                <i class="fa fa-edit"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-danger shop-item-button">Thêm vào giỏ hàng</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal footer -->

<!-- Modal history -->
<div class="modal fade" id="history" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #da484a; color: white;">
                <h5 class="modal-title" id="exampleModalLabel">Lịch sử đơn hàng</h5>
                <button type="button" class="close"  data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div style="display: flex;">
                    <form class="form-inline" style="width: 60%;">
                        <i class="fas fa-search" aria-hidden="true"></i>
                        <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Tìm kiếm tên cửa hàng"
                               aria-label="Search">
                    </form>
                    <div style="text-align: end; display: flex;">
                        <input id="datepicker-history" style="width: 245px;"/><button type="button" class="datepicker-history1"><i class="far fa-calendar-alt"></i></button>
                    </div>
                </div>
                <c:forEach  var="item" items="${user.orders}">
                    <div class="history-đonhang">
                        <span class="history-MDH">
                        </span>
                        <span class="receivedday">
                        </span>
                        <div class="history-contain">
                            <img src="http://localhost:9032/public/image/${item.products[0].product.restaurant.avatar}" class="history-avatar" alt=""/>
                            <div>
                                <span class="history-namestore">
                                    ${item.products[0].product.restaurant.name}
                                </span>
                                <div class="history-address">
                                    ${item.products[0].product.restaurant.address}
                                </div>
                                <div style="display: flex;">

                                    <div style="display: flex;">
                                        <div class="history-price">
                                            <span>
                                                ${item.amount}
                                            </span>VNĐ
                                        </div>
                                        <span class="history-item">(${(item.products).size()} món)<span>
                                                </div>
                                                </div>
                                                </div>

                                                </div>
                                                <div class="history-footer">
                                                    <span style="font-size: 17px;font-weight: bold;margin-left: 50px">Hoàn thành</span>
                                                    <div style="float: right;">
                                                        <button class="btn btn-history">Chi tiết</button>
                                                        <button class="btn btn-history">Đặt lại</button>
                                                    </div>
                                                </div>
                                                </div>
                                            </c:forEach>

                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            <!--modal history-->

                                            <!--end modal-->
                                            <!--Content-->
                                            <div class="container myprofile-user" style="margin-top: 100px">
                                                <div class="row user-profile ">
                                                    <!-- Menu of food -->
                                                    <div class="col-10 col-sm-10 col-md-11">
                                                        <div class="row profile-header">
                                                            <div class="col-md-4 profile-avartar">
                                                                <div class="d-flex">
                                                                    <div class="profile-container-img ">
                                                                        <img src="http://localhost:9032/public/image/${user.avatar}" class="rounded-circle img-avartar" alt="" />
                                                                    </div>
                                                                    <div class="profile-name">
                                                                        <div class="text-name">${user.fullname}</div>
                                                                        <div class="text-like">14k lượt theo dõi</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2" >
                                                                <div>
                                                                    <a href="/mystore" class=" h-100"><img class="rounded img-order-header" src="/public/image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg"  alt="" />
                                                                        <div class="rounded photo-header" >
                                                                            <div d-flex justify-content-md-center align-items-md-center h-100>
                                                                                Quản lý<br/> cửa hàng
                                                                            </div>

                                                                        </div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 rounded  " style="padding-left: 0 !important">
                                                                <div class="profile-intro">
                                                                    <h4 class="text-center">Giới thiệu</h4>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-1 profile-container-buttons">
                                                                <button class="btn btn-primary form-control" ><i class="fas fa-percent"></i>Coupon</button>
                                                                <button class="btn btn-success form-control" data-toggle="modal" data-target="#Modalheartdraft" style="margin-top: 8px"><i class="fas fa-heart"></i>Yêu thích</button>
                                                                <button class="btn btn-danger form-control" data-toggle="modal" data-target="#history" style="margin-top: 8px"><i class="fas fa-history"></i>Lịch sử</button>
                                                            </div>
                                                            <div class="col-md-1 containers-sendmess" style="">
                                                                <a href="/user-info"><button class="btn btn-primary form-control "><i class="fas fa-user-edit"></i><br/>Thông tin</button></a>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-4 list">
                                                                <div class="profile-list rounded" >
                                                                    <div class="img-list">
                                                                        <h3><i class="fas fa-image"></i>Ảnh<a href="#">Thêm ảnh</a></h3>
                                                                        <div class="img-contain d-flex ">
                                                                            <div class="img-contains">
                                                                                <image class="rounded" src ="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                                                            </div>
                                                                            <div class="img-contains">
                                                                                <image class="rounded" src ="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                                                            </div>
                                                                            <div class="img-contains">
                                                                                <image class="rounded" src ="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="profile-list rounded" >
                                                                    <div class="friend-list">
                                                                        <h3><i class="fas fa-user-friends"></i>Bạn bè <a href="#">Thêm Bạn</a></h3>
                                                                        <div class="img-contain d-flex ">
                                                                            <div class="img-contains">
                                                                                <image class="rounded" src ="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />
                                                                                <a href="#">Nguyễn Hạ</a>
                                                                            </div>
                                                                            <div class="img-contains">
                                                                                <image class="rounded" src ="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                                                                <a href="#">Nguyễn Hạ</a>
                                                                            </div>
                                                                            <div class="img-contains">
                                                                                <image class="rounded" src ="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                                                                <a href="#">Nguyễn Hạ</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-8">
                                                                <div class="post-store rounded">
                                                                    <form class="row" action="/newfeed/postNewfeed" method="POST">
                                                                        <div class="col-md-8 post-content">
                                                                            <textarea class="rounded" name="content" id="" cols="30" rows="5" placeholder="Hãy đăng tin mới nhất về bạn đến mọi người"></textarea>
                                                                            <div class="d-flex" style="width: 30%">
                                                                                <image class="rounded" src ="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" width="80%" height="85px" />
                                                                                <div class="upload-img-status" >
                                                                                    <div class="gallery text-center">
                                                                                        <a id="chossefile">
                                                                                            <div class="image-frame-upload" style="border: 1px solid blue;width: 20%;height: 85px;position: absolute">
                                                                                                <span style="position: absolute;color: #5b6dc8;font-size:100px;opacity: 0.7;left: 8px;bottom:-20px;">+</span>
                                                                                            </div>
                                                                                        </a>
                                                                                        <div class="desc "><input style="width: 100%; display: none;" type="file" name="multipartFile" class="btn btn-danger img-store-register"/></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="row">
                                                                                <div class="col-md-6">

                                                                                    <label  style="font-size: 10px;width: 100%;margin-top: 2px" for="upload-photo"  class="btn btn-success"><i class="fas fa-image"></i> Ảnh/Video</label>

                                                                                    <input type="file"  id="upload-photo"/>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <button class="btn btn-success" type="button" style="margin-bottom: -5px;" data-toggle="modal" data-target="#mapModal-users"><i class="fas fa-map-marker-alt"></i> Địa điểm</button>

                                                                                </div>

                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <button type="button" class="btn btn-success" data-target="#postModal-users" data-toggle="modal"><i class="fas fa-hamburger"></i> Đăng món</button>
                                                                                </div>
                                                                            </div>
                                                                            <hr/>
                                                                            <div>
                                                                                <button class="btn btn-primary">Đăng</button>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="rounded status">
                                                                    <div class="alignment">
                                                                        <div class="media">
                                                                            <img src="/public/image/avatar/unnamed.png" alt="avatar" width="50px" class="rounded-circle avatar" />
                                                                            <div class="media-body">
                                                                                <div class="name"> <a href="#">Sweetlane</a>  <img src="/public/image/icons/check.svg" class="check" alt="" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="dropleft">
                                                                                <a  data-toggle="dropdown"><i class="fa fa-ellipsis-h" aria-hidden="true" ></i></a>
                                                                                <div class="dropdown-menu" >
                                                                                    <a class="dropdown-item" href="#">Ẩn</a>
                                                                                    <a class="dropdown-item" href="#">Sửa</a>
                                                                                    <a class="dropdown-item" href="#">Xóa</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="font1">
                                                                            Hè không sợ nóng, vì có CoolCream, với 7 loại kem trái cây cho bạn thêm ngọt ngào
                                                                        </div>
                                                                        <div>
                                                                            <a href="#">CoolCream#</a>
                                                                            <a href="#">sweet#</a>
                                                                            <a href="#">fruit#</a>
                                                                            <a href="#">sweetlane#</a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="image1">
                                                                        <img src="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" class="rounded background" alt="" />
                                                                    </div>
                                                                    <div style="margin-top: 2px;display: flex;">
                                                                        <a href="" data-toggle="modal" data-target="#Modallikeshare" style="color: black;">
                                                                            <span style="display: flex;"><div style="margin-right: 5px;margin-left: 15px;"><i class="fa fa-heart rounded-circle" aria-hidden="true" style="color: white; background-color: #da484a;padding: 5px;"></i></div>4,5k</span>
                                                                        </a>
                                                                        <div style="width: 100%;text-align: end; padding-right: 15px;"><a data-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample"><span class="count-comment">200 bình luận</span></a>
                                                                            <a href="" data-toggle="modal" data-target="#Modallikeshare" style="color: black;"><span>200 chia sẻ</span></a>
                                                                        </div>
                                                                    </div>
                                                                    <hr class="hr-newsfeed"/>
                                                                    <div class="icon2">
                                                                        <div class="subicon1">
                                                                            <a><i class="fas fa-utensils" data-toggle="modal" data-target="#orderModal"></i>
                                                                            </a>

                                                                            <a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                                            <a><i class="fa fa-comment" aria-hidden="true" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample"></i></a>
                                                                        </div>
                                                                    </div>

                                                                    <div class="collapse" id="collapseExample1">
                                                                        <div class="card card-body">
                                                                            <div class="post-footer">
                                                                                <div class="input-group">
                                                                                    <input class="form-control input-comments" placeholder="Add a comment" type="text" />
                                                                                    <button class="input-group-addon">
                                                                                        <i class="fa fa-edit"></i>
                                                                                    </button>
                                                                                </div>
                                                                                <ul class="comments-list navbar-nav">
                                                                                    <li class="comment nav-item">
                                                                                        <a class="pull-left" href="#">
                                                                                            <img class="avatar " src="/public/image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar " />
                                                                                        </a>
                                                                                        <div class="comment-body ">
                                                                                            <div class="comment-heading ">
                                                                                                <h4 class="user ">Gavino Free</h4>
                                                                                                <h5 class="time ">5 minutes ago</h5>
                                                                                                <div class="report dropright">
                                                                                                    <a href="#" class="" data-toggle="dropdown"> <i class="fas fa-ellipsis-h" aria-hidden="true"></i>
                                                                                                    </a>
                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                        <a class="dropdown-item" href="#">Ẩn bình luận</a>
                                                                                                        <a class="dropdown-item" href="#">Sửa </a>
                                                                                                        <a class="dropdown-item" href="#">Báo cáo</a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <p>Mem mem<br/>
                                                                                                <a href="#">Thích</a>
                                                                                                <a href="#" data-toggle="collapse" data-target="#reply1" >Trả lời</a>
                                                                                            <div id="reply1" class="collapse">
                                                                                                <div class="input-group" style="margin-left: -60px;">
                                                                                                    <a class="pull-left " href="# ">
                                                                                                        <img class="avatar" src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
                                                                                                    </a>
                                                                                                    <input class="form-control input-comments" placeholder="Add a comment" type="text" />
                                                                                                    <button class="input-group-addon">
                                                                                                        <i class="fa fa-edit"></i>
                                                                                                    </button>
                                                                                                </div>
                                                                                            </div>
                                                                                            </p>
                                                                                        </div>
                                                                                        <ul class="comments-list navbar-nav ">
                                                                                            <li class="comment ">
                                                                                                <a class="pull-left " href="# ">
                                                                                                    <img class="avatar " src="/public/image/avatar/Hot-Food-Logo-991x991.jpg " alt="avatar " />
                                                                                                </a>
                                                                                                <div class="comment-body ">
                                                                                                    <div class="comment-heading ">
                                                                                                        <h4 class="user ">Ryan Haywood</h4>
                                                                                                        <h5 class="time ">3 minutes ago</h5>
                                                                                                        <div class="report dropright">
                                                                                                            <a href="#" class="" data-toggle="dropdown"> <i class="fas fa-ellipsis-h" aria-hidden="true"></i>
                                                                                                            </a>
                                                                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                                                                <a class="dropdown-item" href="#">Ẩn bình luận</a>
                                                                                                                <a class="dropdown-item" href="#">Sửa </a>
                                                                                                                <a class="dropdown-item" href="#">Báo cáo</a>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <p>Relax my friend
                                                                                                        <br/>
                                                                                                        <a href="#">Thích</a>
                                                                                                        <a href="#" data-toggle="collapse" data-target="#reply2" 5>Trả lời</a>
                                                                                                    <div id="reply2" class="collapse">
                                                                                                        <div class="input-group" style="margin-left: -60px;">
                                                                                                            <a class="pull-left " href="# ">
                                                                                                                <img class="avatar" src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
                                                                                                            </a>
                                                                                                            <input class="form-control input-comments" placeholder="Add a comment" type="text" />
                                                                                                            <button class="input-group-addon">
                                                                                                                <i class="fa fa-edit"></i>
                                                                                                            </button>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    </p>
                                                                                                </div>
                                                                                            </li>
                                                                                            <li class="comment ">
                                                                                                <a class="pull-left " href="# ">
                                                                                                    <img class="avatar " src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
                                                                                                </a>
                                                                                                <div class="comment-body ">
                                                                                                    <div class="comment-heading ">
                                                                                                        <h4 class="user ">Gavino Free</h4>
                                                                                                        <h5 class="time ">3 minutes ago</h5>
                                                                                                        <div class="report dropright">
                                                                                                            <a href="#" class="" data-toggle="dropdown"> <i class="fas fa-ellipsis-h" aria-hidden="true"></i>
                                                                                                            </a>
                                                                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                                                                <a class="dropdown-item" href="#">Ẩn bình luận</a>
                                                                                                                <a class="dropdown-item" href="#">Sửa </a>
                                                                                                                <a class="dropdown-item" href="#">Báo cáo</a>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <p>Ok, cool. <br/>

                                                                                                        <a href="#">Thích</a>
                                                                                                        <a href="#" data-toggle="collapse" data-target="#reply3" 5>Trả lời</a>
                                                                                                    <div id="reply3" class="collapse">
                                                                                                        <div class="input-group" style="margin-left: -60px;">
                                                                                                            <a class="pull-left " href="# ">
                                                                                                                <img class="avatar" src="/public/image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
                                                                                                            </a>
                                                                                                            <input class="form-control input-comments" placeholder="Add a comment" type="text" />
                                                                                                            <button class="input-group-addon">
                                                                                                                <i class="fa fa-edit"></i>
                                                                                                            </button>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    </p>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <script async defered>
                                                        goongjs.accessToken = '06aQWUB2EF6R8iKTMJbBf9plN5ZpZcAmEzXlRqdP';
                                                        var map = new goongjs.Map({
                                                            container: 'map', // container id
                                                            style: 'https://tiles.goong.io/assets/goong_map_web.json', // stylesheet location
                                                            center: [105, 21], // starting position [lng, lat]
                                                            zoom: 9 // starting zoom
                                                        });

                                                        var geocoder = new GoongGeocoder({
                                                            accessToken: "rBiYNcmLhEbdjUw21NQt5mb3Qbm1SrRqdWSru7Pm",
                                                            goongjs: goongjs
                                                        })

                                                        var geolocateControl = new goongjs.GeolocateControl({
                                                            positionOptions: {
                                                                enableHighAccuracy: true
                                                            },
                                                            trackUserLocation: true
                                                        })

                                                        map.addControl(new goongjs.FullscreenControl());

                                                        map.on('load', function() {
                                                            map.addSource('single-point', {
                                                                type: 'geojson',
                                                                data: {
                                                                    type: 'FeatureCollection',
                                                                    features: []
                                                                }
                                                            });
                                                            map.addControl(
                                                                    geocoder
                                                                    )
                                                            map.addControl(
                                                                    geolocateControl
                                                                    );
                                                            map.addLayer({
                                                                id: 'point',
                                                                source: 'single-point',
                                                                type: 'circle',
                                                                paint: {
                                                                    'circle-radius': 10,
                                                                    'circle-color': '#448ee4'
                                                                }
                                                            });
                                                        });

                                                        var marker = new goongjs.Marker({
                                                            draggable: true
                                                        })
                                                                .setLngLat([105, 21])
                                                                .addTo(map);

                                                        marker.on('dragend', function() {

                                                            var lngLat = marker.getLngLat();
                                                            fetch('https://rsapi.goong.io/Geocode?latlng=' + lngLat.lat + ',' + lngLat.lng + '&api_key=rBiYNcmLhEbdjUw21NQt5mb3Qbm1SrRqdWSru7Pm&limit=1')
                                                                    .then(function(response) {
                                                                        return response.json()
                                                                    })
                                                                    .then(function(data) {
                                                                        $(".input-address").val(data.results[0].formatted_address);
                                                                    });
                                                        });
                                                        geolocateControl.on("geolocate", function(e) {
                                                            var lng = e.coords.longitude;
                                                            var lat = e.coords.latitude;
                                                            marker._lngLat = {lat: lat, lng: lng}
                                                            fetch('https://rsapi.goong.io/Geocode?latlng=' + lat + ',' + lng + '&api_key=rBiYNcmLhEbdjUw21NQt5mb3Qbm1SrRqdWSru7Pm', {mode: "cors"})
                                                                    .then(function(response) {
                                                                        return response.json()
                                                                    })
                                                                    .then(function(data) {
                                                                        $(".input-address").val(data.results[0].formatted_address);
                                                                    });
                                                        })
                                                        geocoder.on("result", function(e) {
                                                            geocoder.mapMarker.remove();
                                                            marker._lngLat = geocoder.mapMarker._lngLat;
                                                            $(".input-address").val(e.result.description);
                                                        })
                                                        $(".btn-location").click(function() {
                                                            $(".goongjs-ctrl-fullscreen").trigger("click");
                                                        })
                                                        $("#mapModel .modal-footer button").click(function() {
                                                            $("#mapModel").modal("hide");
                                                        })
                                                        $(".close").click(function() {
                                                            $(".input-address").val("");
                                                            $("#mapModel").modal("hide");
                                                        })
                                                    </script>
                                                    <%@include  file="footer.jsp" %>