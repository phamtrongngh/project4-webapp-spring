<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!--Content-->
<a onclick="topFunction()" id="myBtn" title="Go to top">Top</a>
<div class="container" style="margin-top: 100px">
    <div class="row">
        <!-- Menu of food -->
        <div class="col-10 col-sm-10 col-md-11">
            <div class="row profile-header">
                <div class="col-md-4 profile-avartar">
                    <div style="margin-top: 50px">
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
                <div class="col-md-5 profile-intro">
                    <h2 class="text-center">Giới thiệu </h2>
                    <p>Họ tên: </p>
                    <p>Tỉnh/thành phố: </p>
                    <p>Trường học: </p>
                    <p>Quê quán: </p>
                    <p>Tình trạng quan hệ: </p>       
                </div>
                <div class="col-md-2 containers-sendmess" style="padding-right: 0 !important;">
                    <button class="btn btn-primary "><i class="far fa-comment"></i><br/>Gửi tin</button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
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
                            <h3><i class="fas fa-user-friends"></i>Bạn bè <span>150474</span><a href="#">Thêm Bạn</a></h3>
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
                        <div class="row">
                            <div class="col-md-8 post-content">
                                <textarea class="rounded" name="" id="" cols="30" rows="5" placeholder="Hãy đăng tin mới nhất về bạn đến mọi người"></textarea>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- LiST CHAT -->
        <div class="col-2 col-sm-2 col-md-1 list-friends rounded">
            <div id="three">
                <div style="margin-left: -3px">
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
                <div style="margin-left: -3px">
                    <a class="btn-down "><i class="fa fa-chevron-circle-down "  aria-hidden="true "></i></a>
                </div>
            </div>
        </div>

    </div>
    <%@include  file="footer.jsp" %>