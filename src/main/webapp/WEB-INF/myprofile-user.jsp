<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!--Content-->
<div class="container" style="margin-top: 100px">
    <div class="row user-profile myprofile-user">
        <!-- Menu of food -->
        <div class="col-10 col-sm-10 col-md-11">
            <div class="row profile-header">
                <div class="col-md-4 profile-avartar">
                    <div>
                        <div class="profile-container-img">
                            <img src="/public/image/avatar/unnamed.png" class="rounded-circle img-avartar" alt="" />
                        </div>
                        <div class="profile-name">
                            <div class="text-name">SWEETLANE</div>
                            <div class="text-like">14k lượt thích</div>
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
                <div class="col-md-4">
                    <div>
                        <a href="/statistical"><img class="rounded img-order" src="/public/image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" style="height: 173px" alt="" />
                            <div class="rounded photo" style="height: 173px;margin-top: -173px;">
                                <div>
                                    Quản lý cửa hàng
                                </div>

                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2 profile-container-buttons">
                    <button class="btn btn-primary form-control" style="margin-left: -10px"><i class="fas fa-store-alt"></i>Cửa hàng</button>
                    <button class="btn btn-success form-control" style="margin-top: 8px;margin-left: -10px"><i class="fas fa-heart"></i>Yêu thích</button>
                    <button class="btn btn-danger form-control" style="margin-top: 8px;margin-left: -10px"><i class="fas fa-history"></i>Lịch sử giao dịch</button>
                </div>
                <div class="col-md-1 containers-sendmess" style="padding-right: 0 !important;margin-left: -15px">
                    <button class="btn btn-primary form-control "style="width: 210%"><i class="fas fa-user-edit"></i>Sửa thông tin</button>
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
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label  style="font-size: 12px;width: 100%" for="upload-photo"  class="btn btn-success"><i class="fas fa-image"></i> Ảnh/Video</label>
                                        <input type="file"  id="upload-photo"/>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-success" style="margin-bottom: -5px;"><i class="fas fa-map-marker-alt"></i> Địa điểm</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <button class="btn btn-success"><i class="fas fa-hamburger"></i> Đăng món</button>
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
                                    <div class="name"> Sweetlane <img src="/public/image/icons/check.svg" class="check" alt="" />
                                    </div>
                                </div>
                                <a href="#"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
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
                            <span style="display: flex;"><div style="margin-right: 5px;margin-left: 15px;"><i class="fa fa-heart rounded-circle" aria-hidden="true" style="color: white; background-color: #da484a;padding: 5px;"></i></div>4,5k</span>
                            <div style="width: 100%;text-align: end; padding-right: 15px;"><a data-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample"><span class="count-comment">200 bình luận</span></a><span>200 chia sẻ</span></div>
                        </div>
                        <hr class="hr-newsfeed"/>
                        <div class="icon2">
                            <div class="subicon1">
                                <a><i class="fas fa-utensils" data-toggle="modal" data-target="#myModal"></i>
                                </a>
                                <!-- The Modal -->
                                <div class="modal" id="myModal">
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

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger shop-item-button">Thêm vào giỏ hàng</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>
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

        <%@include  file="footer.jsp" %>