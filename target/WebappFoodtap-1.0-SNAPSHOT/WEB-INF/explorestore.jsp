
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="container explorestore" style="margin-top: 100px">
    <div class="row">
        <div class="col-10 col-sm-10 col-md-11">
            <div class="d-flex justify-content-between" style="width: 102%">
                <div class="profile-text-hot">
                    Hot nhất
                </div>
                <div class="d-flex " style="width: 26%">
                    <input type="text" class="search-food rounded " placeholder="Tìm món ăn đang hot" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" ><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-hot">
                <div class="col-md-4">
                    <img src="/public/image/images new feed/pastaveg_640x480.jpg" alt="" />
                    <a href="">Nui xào bơ tỏi</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà phô mai</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/493ss_thinkstock_rf_photo_of_berry_nut_oatmeal.jpg" alt="">
                    <a href="">Cháo</a>
                    <div class="text-price">60.000</div>
                </div>
            </div>
            <div class="profile-menu-hot">
                <div class="col-md-4">
                    <img src="/public/image/images new feed/2b-bg.jpg" alt="" />
                    <a href="">Bánh mì thịt</a>
                    <div class="text-price">65.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" alt="">
                    <a href="">Kem</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/d0ad2c2ef5668d99660d4e156b39f260.jpg" alt="">
                    <a href="">Pizza hải sản</a>
                    <div class="text-price">108.000</div>
                </div>
            </div>
            <div class="d-flex justify-content-between" style="width: 102%">
                <div class="profile-text-near">
                    Gần tôi
                </div>
                <div class="d-flex" style="width: 26%">
                    <input type="text" class="search-food rounded " placeholder="Tìm món ăn gần bạn" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-near">
                <div class="col-md-4">
                    <img src="/public/image/images new feed/pastaveg_640x480.jpg" alt="" />
                    <a href="">Nui xào bơ tỏi</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà phô mai</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà nướng mật ong</a>
                    <div class="text-price">77.000</div>
                </div>
            </div>
            <div class="profile-menu-near">
                <div class="col-md-4">
                    <img src="/public/image/images new feed/pastaveg_640x480.jpg" alt="" />
                    <a href="">Nui xào bơ tỏi</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà phô mai</a>
                    <div class="text-price">77.000</div>
                </div>
                <div class="col-md-4">
                    <img src="/public/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                    <a href="">Gà nướng mật ong</a>
                    <div class="text-price">77.000</div>
                </div>
            </div>

        </div>
    </div>
    <!--Bootstrap-->
    <script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
    <script src="/public/js/jquery/jquery.min.js "></script>
    <script src="/public/js/bootstrap/popper.min.js "></script>
    <script src="/public/js/bootstrap/bootstrap.min.js "></script>
    <script src="/public/js/swiper.min.js "></script>
    <script src="/public/js/jquery-ui.js"></script>
    <script src="http://localhost:9032/socket.io/socket.io.js"></script>
    <script src="/public/js/script.js "></script>

</body>
</html>
