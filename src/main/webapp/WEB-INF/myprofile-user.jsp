<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!--Content-->
<a onclick="topFunction()" id="myBtn" title="Go to top">Top</a>
<div class="container" style="margin-top: 100px">
    <div class="row user-profile">
        <!-- Menu of food -->
        <div class="col-10 col-sm-10 col-md-11">
            <div class="row profile-header">
                <div class="col-md-4 profile-avartar">
                    <div>
                    <div class="profile-container-img">
                        <img src="/image/avatar/unnamed.png" class="rounded-circle img-avartar" alt="" />
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
                        <a href="/statistical"><img class="rounded img-order" src="/image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" alt="" />
                            <div class="rounded photo">
                                <div>
                                    Quản lý cửa hàng
                                </div>

                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2 profile-container-buttons">
                    <button class="btn btn-primary form-control"><i class="fas fa-store-alt"></i>Cửa hàng</button>
                    <button class="btn btn-success form-control"><i class="fas fa-heart"></i>Yêu thích</button>
                    <button class="btn btn-danger form-control"><i class="fas fa-history"></i>Lịch sử giao dịch</button>
                </div>
                <div class="col-md-1 containers-sendmess" style="padding-right: 0 !important;">
                    <button class="btn btn-primary form-control "><i class="fas fa-user-edit"></i>Sửa thông tin</button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 list">
                    <div class="profile-list rounded" >
                        <div class="img-list">
                            <h3><i class="fas fa-image"></i>Ảnh<a href="#">Thêm ảnh</a></h3>
                             <div class="img-contain d-flex ">
                                <div class="img-contains">
                                    <image class="rounded" src ="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                </div>
                                <div class="img-contains">
                                    <image class="rounded" src ="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                </div>
                                <div class="img-contains">
                                    <image class="rounded" src ="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-list rounded" >
                        <div class="friend-list">
                            <h3><i class="fas fa-user-friends"></i>Bạn bè <a href="#">Thêm Bạn</a></h3>
                            <div class="img-contain d-flex ">
                                <div class="img-contains">
                                    <image class="rounded" src ="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />
                                    <a href="#">Nguyễn Hạ</a>
                                </div>
                                <div class="img-contains">
                                    <image class="rounded" src ="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
                                        <a href="#">Nguyễn Hạ</a>
                                </div>
                                <div class="img-contains">
                                    <image class="rounded" src ="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" />  
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
                                        <label  style="font-size: 12px;" for="upload-photo"  class="btn btn-success"><i class="fas fa-image"></i> Ảnh/Video</label>
                                        <input type="file"  id="upload-photo"/>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-success" style="margin-bottom: 10px;"><i class="fas fa-map-marker-alt"></i> Địa điểm</button>
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
                            <img src="image/avatar/unnamed.png" alt="avatar" width="50px" class="rounded-circle avatar" />
                            <div class="media-body">
                                <div class="name"> Sweetlane <img src="image/icons/check.svg" class="check" alt="" />
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
                        <img src="image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" class="rounded background" alt="" />
                    </div>
                    <div class="icon2">
                        <div class="subicon1">
                            <a data-toggle="modal" data-target="#myModal"><i class="fas fa-utensils"></i>
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
                                                        <img class="rounded img-status" src="./image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" alt="" />
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
                                                                <button class="minus is-form" type="button"><i class="fa fa-minus"
                                                                        aria-hidden="true"></i></button>
                                                                <input aria-label="quantity" class="input-qty" min="1" max="999" name="" type="text" value="1" />
                                                                <button class="plus is-form" type="button"><i class="fa fa-plus"
                                                                        aria-hidden="true"></i></button>
                                                            </p>
                                                            <p class="price-food">Giá : 22.000</p>

                                                        </div>

                                                        <div class="rate-content">
                                                            <ul class="comments-list first navbar-nav">
                                                                <li class="comment nav-item">
                                                                    <a class="pull-left" href="#">
                                                                        <img class="avatar" src="image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar" />
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
                                                                                        <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                <img class="avatar" src="image/avatar/Hot-Food-Logo-991x991.jpg" alt="avatar" />
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
                                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                            <a href="#"><i class="fa fa-comment" aria-hidden="true"></i></a>
                        </div>
                    </div>
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
                                    <img class="avatar " src="image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar " />
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
                                        <a href="#" data-toggle="collapse" data-target="#reply1" 5>Trả lời</a>
                                        <div id="reply1" class="collapse">
                                            <div class="input-group" style="margin-left: -60px;">
                                                <a class="pull-left " href="# ">
                                                    <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                            <img class="avatar " src="image/avatar/Hot-Food-Logo-991x991.jpg " alt="avatar " />
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
                                                            <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                            <img class="avatar " src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                                            <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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

                <div class="rounded status">
                    <div class="alignment">
                        <div class="media">
                            <img src="image/avatar/Hot-Food-Logo-991x991.jpg" alt="avatar" width="50px" class="rounded-circle avatar" />
                            <div class="media-body">
                                <div class="name"> Sandwiches man <img src="image/icons/check.svg" class="check" alt="" />
                                </div>
                            </div>
                            <a href="#"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                        </div>
                        <div class="font1">
                            Delicious sandwiches come here...
                        </div>
                        <div>
                            <a href="#">sandwiches#</a>
                            <a href="#">sandwichesman#</a>
                            <a href="#">delicious#</a>
                        </div>
                    </div>

                    <div class="image1">
                        <img src="image/images new feed/cooky-recipe-636656153870582498.jpg" class="rounded background" alt="" />
                    </div>

                    <div class="icon2">
                        <div class="subicon1">
                            <a data-toggle="modal" data-target="#myModal"><i class="fas fa-utensils"></i>
                            </a>
                            <!-- The Modal -->
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Modal Heading</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <div class="container contain">
                                                <div class="row">
                                                    <div class=" info-product">
                                                        <img class="rounded img-status" src="./image/images new feed/cooky-recipe-636656153870582498.jpg" alt="" />
                                                        <div>
                                                            <h1>Kem trái cây rừng </h1>
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
                                                                <button class="minus is-form" type="button"><i class="fa fa-minus"
                                                                        aria-hidden="true"></i></button>
                                                                <input aria-label="quantity" class="input-qty" min="1" max="999" name="" type="text" value="1" />
                                                                <button class="plus is-form" type="button"><i class="fa fa-plus"
                                                                        aria-hidden="true"></i></button>
                                                            </p>
                                                            <p>Giá : 22.000</p>
                                                            <p>Phí dịch vụ : 15.000</p>
                                                            <p>Tổng cộng: 27.000</p>
                                                        </div>

                                                        <div class="rate-content">
                                                            <ul class="comments-list first navbar-nav">
                                                                <li class="comment nav-item">
                                                                    <a class="pull-left" href="#">
                                                                        <img class="avatar" src="image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar" />
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
                                                                                        <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                <img class="avatar" src="image/avatar/Hot-Food-Logo-991x991.jpg" alt="avatar" />
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
                                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                            <a href="#"><i class="fa fa-comment" aria-hidden="true"></i></a>
                        </div>
                    </div>
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
                                    <img class="avatar " src="image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar " />
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
                                    <p>Mem mem <br/>
                                        <a href="#">Thích</a>
                                        <a href="#" data-toggle="collapse" data-target="#reply4" 5>Trả lời</a>
                                        <div id="reply4" class="collapse">
                                            <div class="input-group" style="margin-left: -60px;">
                                                <a class="pull-left " href="# ">
                                                    <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                            <img class="avatar " src="image/avatar/Hot-Food-Logo-991x991.jpg " alt="avatar " />
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
                                            <p>Relax my friend <br/>
                                                <a href="#">Thích</a>
                                                <a href="#" data-toggle="collapse" data-target="#reply5" 5>Trả lời</a>
                                                <div id="reply5" class="collapse">
                                                    <div class="input-group" style="margin-left: -60px;">
                                                        <a class="pull-left " href="# ">
                                                            <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                            <img class="avatar " src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                                <a href="#" data-toggle="collapse" data-target="#reply6" 5>Trả lời</a>
                                                <div id="reply6" class="collapse">
                                                    <div class="input-group" style="margin-left: -60px;">
                                                        <a class="pull-left " href="# ">
                                                            <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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

                <div class="rounded status">
                    <div class="alignment">
                        <div class="media">
                            <img src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" class="rounded-circle avatar" />
                            <div class="media-body">
                                <div class="name">
                                    China Food <img src="image/icons/check.svg" class="check" alt="" />
                                </div>
                            </div>
                            <a href="#">
                                <a href="#"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                            </a>
                        </div>

                        <div class="font1">
                            Vịt quay truyền thống đã trở lại...
                        </div>

                        <div>
                            <a href="#">Vitquay#</a>
                            <a href="#">hot#</a>
                            <a href="#">chinafood#</a>
                        </div>

                    </div>

                    <div class="image1">
                        <img src="image/images new feed/vit-quay-bac-kinh.jpg" class="rounded background" alt="" />
                    </div>

                    <div class="icon2">
                        <div class="subicon1">
                            <a data-toggle="modal" data-target="#myModal"><i class="fas fa-utensils"></i>
                            </a>
                            <!-- The Modal -->
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Modal Heading</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <div class="container contain">
                                                <div class="row">
                                                    <div class=" info-product">
                                                        <img class="rounded img-status" src="./image/images new feed/vit-quay-bac-kinh.jpg" alt="" />
                                                        <div>
                                                            <h1>Kem trái cây rừng </h1>
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
                                                                <button class="minus is-form" type="button"><i class="fa fa-minus"
                                                                        aria-hidden="true"></i></button>
                                                                <input aria-label="quantity" class="input-qty" min="1" max="999" name="" type="text" value="1" />
                                                                <button class="plus is-form" type="button"><i class="fa fa-plus"
                                                                        aria-hidden="true"></i></button>
                                                            </p>
                                                            <p>Giá : 22.000</p>
                                                            <p>Phí dịch vụ : 15.000</p>
                                                            <p>Tổng cộng: 27.000</p>
                                                        </div>

                                                        <div class="rate-content">
                                                            <ul class="comments-list first navbar-nav">
                                                                <li class="comment nav-item">
                                                                    <a class="pull-left" href="#">
                                                                        <img class="avatar" src="image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar" />
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
                                                                                        <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                <img class="avatar" src="image/avatar/Hot-Food-Logo-991x991.jpg" alt="avatar" />
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
                                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                                                                                                <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar" />
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
                            <a href="#"><i class="fa fa-comment" aria-hidden="true"></i></a>
                        </div>

                    </div>
                    <div class="post-footer">

                        <ul class="comments-list navbar-nav">
                            <li class="comment nav-item">
                                <a class="pull-left" href="#">
                                    <img class="avatar " src="image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png" alt="avatar " />
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
                                    <p>Mem mem <br/>
                                        <a href="#">Thích</a>
                                        <a href="#" data-toggle="collapse" data-target="#reply7" 5>Trả lời</a>
                                        <div id="reply7" class="collapse">
                                            <div class="input-group" style="margin-left: -60px;">
                                                <a class="pull-left " href="# ">
                                                    <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                            <img class="avatar " src="image/avatar/Hot-Food-Logo-991x991.jpg " alt="avatar " />
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
                                            <p>Relax my friend <br/>
                                                <a href="#">Thích</a>
                                                <a href="#" data-toggle="collapse" data-target="#reply8">Trả lời</a>
                                                <div id="reply8" class="collapse">
                                                    <div class="input-group" style="margin-left: -60px;">
                                                        <a class="pull-left " href="# ">
                                                            <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                            <img class="avatar " src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
                                                <a href="#" data-toggle="collapse" data-target="#reply9" 5>Trả lời</a>
                                                <div id="reply9" class="collapse">
                                                    <div class="input-group" style="margin-left: -60px;">
                                                        <a class="pull-left " href="# ">
                                                            <img class="avatar" src="image/avatar/chinese-food-logo-design_139869-105.jpg" alt="avatar " />
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
       
    <%@include  file="footer.jsp" %>