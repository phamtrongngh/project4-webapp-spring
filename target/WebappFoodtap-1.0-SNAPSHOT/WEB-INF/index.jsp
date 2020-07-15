
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!--Content-->
<div class="container" style="margin-top: 100px">
    <div class="row">
        <h1>${test}</h1>
        <!-- ORDER -->
        <div class="col-sm-12 col-md-2 ">
            <div id="one" >
                <div>
                    <a href="#"><img class="rounded img-order" src="image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" alt="" />
                        <div class="rounded photo">
                            <div>
                                Khám phá món ngon
                            </div>

                        </div>
                    </a>
                </div>
                <div style="margin-top: 20px">
                    <a href="#"><img class="rounded img-order" src="image/Background/set-of-children-eating-together-vector-22784582.jpg" alt="" />
                        <div class="rounded photo ">
                            <div>
                                Bạn cùng<br/> khẩu vị
                            </div>
                        </div>
                    </a>
                </div>
                <div style="margin-top: 20px">
                    <a href="#"><img class="rounded img-order" src="image/Background/street-food-trailer-food-truck-cartoon-vector-19682966.jpg" alt="" />
                        <div class="rounded photo ">

                            Gian hàng <br/> của tôi

                        </div>
                    </a>
                </div>
                <div style="margin-top: 20px">
                    <a href="#"><img class="rounded img-order" src="image/Background/sale-tag-icon-flat-cartoon-discount-label-vector-23608810.jpg" alt="" />

                        <div class="rounded photo ">
                            <div>
                                Phiếu ăn <br/> giảm giá
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- STATUS -->
        <div class="col-10 col-sm-10 col-md-9">
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
                    <img src="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" class="rounded background" alt="" />
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
        <!-- LiST CHAT -->
        <div class="col-2 col-sm-2 col-md-1 rounded list-friends ">
            <div id="three">
                <div>
                    <a class="btn-up "><i class="fa fa-chevron-circle-up " aria-hidden="true "></i></a>
                </div>
                <div class="box ">
                    <div>
                        <a href="# "><img src="image/avatar/talin.JPG " class="rounded-circle img-avatar1 " alt=" "></a>
                    </div>
                    <div>
                        <a href="# "><img src="image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png " class="rounded-circle img-avatar1 " alt=" " /></a>
                    </div>
                    <div>
                        <a href="# "><img src="image/avatar/unnamed.png " class="rounded-circle img-avatar1 " alt=" " /></a>
                    </div>
                    <div>
                        <a href="# "><img src="image/avatar/Hot-Food-Logo-991x991.jpg " class="rounded-circle img-avatar1 " alt=" " /></a>
                    </div>
                </div>
                <div>
                    <a class="btn-down "><i class="fa fa-chevron-circle-down "  aria-hidden="true "></i></a>
                </div>
            </div>
        </div>

    </div>
</div>

<%@include file="footer.jsp" %>