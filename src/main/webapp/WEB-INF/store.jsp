<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<!-- The Modal -->
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
                        <div class="info-product">
                            <img class="rounded img-status"  alt="" />
                            <div>
                                <h1 class="title-food"></h1>
                                <div class="rate text-center">
                                    <!--                                    <div class="stars">
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
                                                                        <div class="text-like">14k lượt thích</div>-->
                                </div>
                                <p class="content-food"></p>
                            </div>
                            <div class="rounded box-quantity mx-auto">
                                <p class="form-inline quantity">
                                    Số lượng :

                                    <input aria-label="quantity" class="input-qty" min="1" max="999" name="quantity" type="number" value="1" />

                                </p>
                                <p class="price-food">Giá : <span class="price-foodnumber"></span><span>VNĐ</span></p>
                                <p class="total-food">Thành tiền : <span class="total-foodnumber"></span><span>VNĐ</span></p>
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
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger shop-item-button">Thêm vào giỏ hàng</button>
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
<!--Content-->
<div class="container store" style="margin-top: 100px">
    <div class="row ">
        <!-- Menu of food -->
        <div class="col-10 col-sm-10 col-md-11">
            <div class="row profile-header">
                <div class="col-md-4 profile-avartar">
                    <div class="d-flex">
                        <div class="profile-container-img" >
                            <div>
                                <img src="http://localhost:9032/public/image/${restaurant.avatar}" class="rounded-circle img-avartar" alt="" />
                            </div>

                        </div>
                        <div class="profile-name">
                            <div class="text-name">${restaurant.name}</div>
                            <div class="text-like">${(restaurant.followers).size()} lượt thích</div>
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
                        </div>
                    </div>
                </div>
                <div class="col-md-2 store-menu">
                    <div>
                        <a href="/menu/${restaurant._id}"><img class="rounded img-order-header" src="/public/image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" alt="" />
                            <div class="rounded photo-header">
                                <div>
                                    Thực đơn
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
                    <button id="btn-like" class="btn btn-primary form-control"><i class="far fa-thumbs-up"></i>Thích</button>
                    <button class="btn btn-success form-control"><i class="fas fa-star"></i>Đánh giá</button>
                    <button class="btn btn-danger form-control"><i class="fas fa-poll-h"></i>Báo cáo</button>
                </div>
                <div class="col-md-1 containers-sendmess" style="padding-right: 0 !important;">
                    <button class="btn btn-primary form-control "><i class="far fa-comment"></i><br/>Gửi tin</button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2" style="position: relative;top:10px">
                    <div>
                        <a href="/explorestore"><img class="rounded img-order" src="/public/image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" alt="" />
                            <div class="rounded photo">
                                <div>
                                    Khám phá<br/> món ngon
                                </div>

                            </div>
                        </a>
                    </div>
                    <div style="margin-top: 20px">
                        <a href="/sametaste"><img class="rounded img-order" src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" alt="" />
                            <div class="rounded photo ">
                                <div>
                                    Bạn cùng<br/> khẩu vị
                                </div>
                            </div>
                        </a>
                    </div>
                    <div style="margin-top: 20px">
                        <a href="/mystore"><img class="rounded img-order" src="/public/image/Background/street-food-trailer-food-truck-cartoon-vector-19682966.jpg" alt="" />
                            <div class="rounded photo ">

                                Gian hàng <br/> của tôi

                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-7" style="margin-top: 10px">

                    <c:forEach var="item" items="${restaurant.newfeeds}">
                        <c:choose>
                            <c:when test="${item.product!=null}">
                                <div class="rounded status">
                                    <div class="alignment">
                                        <div class="media">
                                            <img src="http://localhost:9032/public/image/${restaurant.avatar}" alt="avatar" width="50px" class="rounded-circle avatar" />
                                            <div class="media-body">
                                                <div href="#" class="name"><a href="/restaurant/${item.restaurant}">${restaurant.name}</a><img src="http://localhost:9032/public/image/avatar/${item.images[0]}" class="check" alt="" />
                                                </div>

                                            </div>
                                            <div class="dropleft">
                                                <a href="#" data-toggle="dropdown"><i class="fa fa-ellipsis-h" aria-hidden="true" ></i></a>
                                                <div class="dropdown-menu" >
                                                    <a class="dropdown-item" href="#">Ẩn</a>
                                                    <a class="dropdown-item" href="#">Sửa</a>
                                                    <a class="dropdown-item" href="#">Xóa</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="font1">
                                            ${item.content}
                                        </div>
                                        <div>
                                            <a href="#">CoolCream#</a>
                                            <a href="#">sweet#</a>
                                            <a href="#">fruit#</a>
                                            <a href="#">sweetlane#</a>
                                        </div>


                                    </div>
                                    <div class="image1">
                                        <img src="http://localhost:9032/public/image/${item.images[0]}" class="rounded background" alt="" />
                                    </div>
                                    <div style="margin-top: 2px;display: flex;">
                                        <span style="display: flex;"><div style="margin-right: 5px;margin-left: 15px;"><i class="fa fa-heart rounded-circle" aria-hidden="true" style="color: white; background-color: #da484a;padding: 5px;"></i></div>${item.likes.size()}</span>
                                        <div style="width: 100%;text-align: end; padding-right: 15px;"><a data-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample"><span class="count-comment">${(item.comments).size()} bình luận</span></a><span>${(item.comments).size()} chia sẻ</span></div>
                                    </div>
                                    <hr class="hr-newsfeed"/>
                                    <div class="icon2">
                                        <div class="subicon1">
                                            <a><i class="fas fa-utensils" data-toggle="modal" data-target="#orderModal" idValue="${item.product}"></i>
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
                            </c:when>

                            <c:otherwise>
                                <div class="rounded status">
                                    <div class="alignment">
                                        <div class="media">
                                            <img src="http://localhost:9032/public/image/${restaurant.avatar}" alt="avatar" width="50px" class="rounded-circle avatar" />
                                            <div class="media-body">
                                                <div href="#" class="name"><a href="/restaurant/${item.restaurant}">${restaurant.name}</a><img src="http://localhost:9032/public/image/avatar/${item.images[0]}" class="check" alt="" />
                                                </div>

                                            </div>
                                            <div class="dropleft">
                                                <a href="#" data-toggle="dropdown"><i class="fa fa-ellipsis-h" aria-hidden="true" ></i></a>
                                                <div class="dropdown-menu" >
                                                    <a class="dropdown-item" href="#">Ẩn</a>
                                                    <a class="dropdown-item" href="#">Sửa</a>
                                                    <a class="dropdown-item" href="#">Xóa</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="font1">
                                            ${item.content}
                                        </div>
                                        <div>
                                            <a href="#">CoolCream#</a>
                                            <a href="#">sweet#</a>
                                            <a href="#">fruit#</a>
                                            <a href="#">sweetlane#</a>
                                        </div>


                                    </div>
                                    <div class="image1">
                                        <img src="http://localhost:9032/public/image/${item.images[0]}" class="rounded background" alt="" />
                                    </div>
                                    <div style="margin-top: 2px;display: flex;">
                                        <span style="display: flex;"><div style="margin-right: 5px;margin-left: 15px;"><i class="fa fa-heart rounded-circle" aria-hidden="true" style="color: white; background-color: #da484a;padding: 5px;"></i></div>${item.likes.size()}</span>
                                        <div style="width: 100%;text-align: end; padding-right: 15px;"><a data-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample"><span class="count-comment">${(item.comments).size()} bình luận</span></a><span>${(item.comments).size()} chia sẻ</span></div>
                                    </div>
                                    <hr class="hr-newsfeed"/>
                                    <div class="icon2">
                                        <div class="subicon1">

                                            <i class="fa fa-heart like-newpost"  aria-hidden="true"></i>
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
                            </c:otherwise>
                        </c:choose>

                    </c:forEach>
                </div>
                <!--Voucher-->
                <div class="col-md-3" style="    position: relative;right: 20px;">
                    <div class="rounded voucher">
                        <div class="header-voucher"><h4><i class="fa fa-list-alt" aria-hidden="true"></i> Khuyến mãi</h4></div>
                    </div>
                    <div class="rounded vouchers">
                        <div class="header-mission"><h4><i class="fas fa-percent"></i> Nhập<br/>"CONOWGIAO"</h4></div>
                    </div>
                    <div class="rounded vouchers">
                        <div class="header-mission"><h4><i class="fas fa-percent"></i> Nhập <br/> "FREESHIP"</h4></div>
                    </div>
                    <div class="rounded vouchers">
                        <div class="header-mission"><h4><i class="fas fa-percent"></i> Giảm <br/> 15% trên giá món</h4></div>
                    </div>
                </div>
            </div>
        </div>

        <%@include  file="footer.jsp" %>