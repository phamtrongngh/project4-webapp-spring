
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!--Content-->
<div class="container" style="margin-top: 100px">
    <div class="row">
        <h1>${test}</h1>
        <!-- ORDER -->
        <div class="col-sm-12 col-md-2 ">
            <div id="one" >
                <div id="left-menu">
                    <a href="#"><img class="rounded img-order" src="image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" alt="" />
                        <div class="rounded photo">
                            <div>
                                Khám phá<br/> món ngon

                            </div>

                        </div>
                    </a>
                </div>
                <div id="left-menu" style="margin-top: 20px">
                    <a href="#"><img class="rounded img-order" src="image/Background/set-of-children-eating-together-vector-22784582.jpg" alt="" />
                        <div class="rounded photo ">
                            <div>
                                Bạn cùng<br/> khẩu vị
                            </div>
                        </div>
                    </a>
                </div>
                <div id="left-menu" style="margin-top: 20px">
                    <a href="#"><img class="rounded img-order" src="image/Background/street-food-trailer-food-truck-cartoon-vector-19682966.jpg" alt="" />
                        <div class="rounded photo ">

                            Gian hàng<br/> của tôi

                        </div>
                    </a>
                </div>
                <div id="left-menu" style="margin-top: 20px">
                    <a href="#"><img class="rounded img-order" src="image/Background/sale-tag-icon-flat-cartoon-discount-label-vector-23608810.jpg" alt="" />

                        <div class="rounded photo ">
                            <div>
                                Phiếu ăn<br/>giảm giá
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- STATUS -->
        <div class="col-12 col-sm-12 col-md-6">
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
                                    <a href="#" data-toggle="collapse" data-target="#reply1" >Trả lời</a>
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
                <div style="margin-top: 2px;display: flex;">
                    <div style="display: flex;"><div style="margin-right: 5px;margin-left: 15px;"><i class="fa fa-heart rounded-circle" aria-hidden="true" style="color: white; background-color: #da484a;padding: 5px;"></i></div><span class="count-like">4,5k</span></div>
                    <div style="width: 100%;text-align: end; padding-right: 15px;"><a data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample"><span class="count-comment">200 bình luận</span></a><span class="count-share">200 chia sẻ</span></div>
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
                        <a href="#"><i class="fa fa-heart" ></i></a>
                        <a><i class="fa fa-comment" aria-hidden="true" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample"></i></a>
                    </div>
                </div>
                <div class="collapse" id="collapseExample2">
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
                </div>

            </div>


        </div>
        <!-- Khuyen mai -->
        <div class="col-md-3">
            <div id="four">
                <div class="header-mission"><h4><i class="fa fa-list-alt" aria-hidden="true"></i> Nhiệm vụ tháng</h4></div>
                <div class="mission">

                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%"  aria-valuemin="0" aria-valuemax="100"></div>

                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 2 món tặng bạn bè sẽ được tặng voucher 200.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>



                        </div>
                        <div style="text-align: end;">1/2</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>

                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>
                </div>
                <div class="header-mission"><h4><i class="fa fa-list-alt" aria-hidden="true"></i> Nhiệm vụ ngày</h4></div>
                <div class="mission">

                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%"  aria-valuemin="0" aria-valuemax="100"></div>

                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 2 món tặng bạn bè sẽ được tặng voucher 200.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>



                        </div>
                        <div style="text-align: end;">1/2</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>

                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>