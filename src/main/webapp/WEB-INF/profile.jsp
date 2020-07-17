
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<a onclick="topFunction()" id="myBtn" title="Go to top">Top</a>
<!--Content-->
<div class="container" style="margin-top: 100px">
    <div class="row">
        <!-- Menu of food -->
        <div class="col-10 col-sm-10 col-md-11">
            <div class="row profile-header">
                <div class="col-md-4 profile-avartar">
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
                <div class="col-md-4">
                    <div>
                        <a href="#"><img class="rounded img-order" src="/image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" alt="" />
                            <div class="rounded photo">
                                <div>
                                    Menu chọn món
                                </div>

                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2 profile-container-button">
                    <div><button class="btn btn-primary form-control">Thích</button></div>
                    <div><button class="btn btn-success form-control">Giới thiệu</button></div>
                    <div><button class="btn btn-danger form-control">Báo cáo</button></div>
                </div>
                <div class="col-md-2 container-sendmess" style="padding-right: 0 !important;">
                    <button class="btn btn-primary "><i class="far fa-comment"></i><br/>Gửi tin</button>
                </div>
            </div>
            <div class="post-store">
                <form class="row" action="/newfeed/postNewfeed">
                    <div class="col-md-8 post-content">
                        <textarea name="content" id="" cols="30" rows="5" placeholder="Hãy đăng tin mới nhất về bạn đến mọi người"></textarea>
                    </div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-md-6">
                                <button class="btn btn-success"><i class="fas fa-image"></i> Ảnh/Video</button>
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
            <div class="profile-menu">
                <div class="col-md-1">Danh mục sản phẩm</div>
                <div class="col-md-11" style="padding-right: 0 !important;">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="profile-menu-row">
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Kem
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/vit-quay-bac-kinh.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Vịt quay
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/foody-upload-api-foody-mobile-seatalk_img_15888236-200507105730.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Trà sữa
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/buffalo-wings.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Gà Nướng
                                                </div>

                                            </div>
                                        </a>
                                    </div>

                                </div>
                                <div class="profile-menu-row1">

                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/d0ad2c2ef5668d99660d4e156b39f260.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Pizza
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/cooky-recipe-636656153870582498.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Sanwich
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Gà phô mai
                                                </div>

                                            </div>
                                        </a>
                                    </div>

                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="profile-menu-row">
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Kem
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/vit-quay-bac-kinh.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Vịt quay
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/foody-upload-api-foody-mobile-seatalk_img_15888236-200507105730.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Trà sữa
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/buffalo-wings.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Gà Nướng
                                                </div>

                                            </div>
                                        </a>
                                    </div>

                                </div>
                                <div class="profile-menu-row1">

                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/d0ad2c2ef5668d99660d4e156b39f260.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Pizza
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/cooky-recipe-636656153870582498.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Sanwich
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Gà phô mai
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#"><img class="rounded " src="/image/images new feed/Boeuf-bourguignon-1920x1080.jpg" alt="" />
                                            <div class="rounded photo">
                                                <div>
                                                    Thịt kho hành
                                                </div>

                                            </div>
                                        </a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>

                </div>
            </div>
            <div class="profile-text-hot">
                Hot nhất
            </div>
            <div class="profile-menu-hot">
                <div class="col-md-4">
                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                    <a href="">Nui xào bơ tỏi</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà phô mai</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/493ss_thinkstock_rf_photo_of_berry_nut_oatmeal.jpg" alt="">
                    <a href="">Cháo</a>
                    <div class="text-price">60.000</div>
                </div>
            </div>
            <div class="profile-menu-hot">
                <div class="col-md-4">
                    <img src="/image/images new feed/2b-bg.jpg" alt="" />
                    <a href="">Bánh mì thịt</a>
                    <div class="text-price">65.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" alt="">
                    <a href="">Kem</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/d0ad2c2ef5668d99660d4e156b39f260.jpg" alt="">
                    <a href="">Pizza hải sản</a>
                    <div class="text-price">108.000</div>
                </div>
            </div>
            <div class="profile-text-hot">
                Mới nhất
            </div>
            <div class="profile-menu-hot">
                <div class="col-md-4">
                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                    <a href="">Nui xào bơ tỏi</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà phô mai</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà nướng mật ong</a>
                    <div class="text-price">77.000</div>
                </div>
            </div>
            <div class="profile-menu-hot">
                <div class="col-md-4">
                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                    <a href="">Nui xào bơ tỏi</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà phô mai</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà nướng mật ong</a>
                    <div class="text-price">77.000</div>
                </div>
            </div>
            <div class="text-center">
                <button type="button" class="btn btn-primary mx-auto dropdown-toggle" id="view-all" data-toggle="collapse" data-target="#see-more"> Xem tất cả</button>
            </div>
            <div id="see-more" class="collapse">

                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">

                            <div class="profile-menu-hot ">
                                <div class="col-md-4">
                                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                                    <a href="">Nui xào bơ tỏi</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà phô mai</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà nướng mật ong</a>
                                    <div class="text-price">77.000</div>
                                </div>
                            </div>
                            <div class="profile-menu-hot ">
                                <div class="col-md-4">
                                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                                    <a href="">Nui xào bơ tỏi</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà phô mai</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà nướng mật ong</a>
                                    <div class="text-price">77.000</div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="profile-menu-hot ">
                                <div class="col-md-4">
                                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                                    <a href="">Nui xào bơ tỏi</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà phô mai</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà nướng mật ong</a>
                                    <div class="text-price">77.000</div>
                                </div>
                            </div>
                            <div class="profile-menu-hot ">
                                <div class="col-md-4">
                                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                                    <a href="">Nui xào bơ tỏi</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà phô mai</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà nướng mật ong</a>
                                    <div class="text-price">77.000</div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="profile-menu-hot ">
                                <div class="col-md-4">
                                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                                    <a href="">Nui xào bơ tỏi</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà phô mai</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà nướng mật ong</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà nướng mật ong</a>
                                    <div class="text-price">77.000</div>
                                </div>

                            </div>
                            <div class="profile-menu-hot ">
                                <div class="col-md-4">
                                    <img src="/image/images new feed/pastaveg_640x480.jpg" alt="" />
                                    <a href="">Nui xào bơ tỏi</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà phô mai</a>
                                    <div class="text-price">77.000</div>
                                </div>
                                <div class="col-md-4">
                                    <img src="/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                                    <a href="">Gà nướng mật ong</a>
                                    <div class="text-price">77.000</div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- LiST CHAT -->
        <div class="col-2 col-sm-2 col-md-1 list-friends rounded">
            <div id="three">
                <div>
                    <a class="btn-up "><i class="fa fa-chevron-circle-up " aria-hidden="true "></i></a>
                </div>
                <div class="box ">
                    <div>
                        <a href="# "><img src="/image/avatar/talin.JPG " class="rounded-circle img-avatar1 " alt=" " /></a>
                    </div>
                    <div>
                        <a href="# "><img src="/image/avatar/c29a7d29348b1a3f502803ab9d8355cc.png " class="rounded-circle img-avatar1 " alt=" " /></a>
                    </div>
                    <div>
                        <a href="# "><img src="/image/avatar/unnamed.png " class="rounded-circle img-avatar1 " alt=" " /></a>
                    </div>
                    <div>
                        <a href="# "><img src="/image/avatar/Hot-Food-Logo-991x991.jpg " class="rounded-circle img-avatar1 " alt=" " /></a>
                    </div>
                </div>
                <div>
                    <a class="btn-down "><i class="fa fa-chevron-circle-down "  aria-hidden="true "></i></a>
                </div>
            </div>
        </div>

    </div>
</div>

<%@include  file="footer.jsp" %>