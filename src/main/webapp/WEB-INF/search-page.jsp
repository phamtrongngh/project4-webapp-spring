
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="container sametaste" style="margin-top: 100px">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-12">
            <div class="d-flex justify-content-between" style="width: 100%">
                <div class="profile-text-hot">
                    Cửa hàng
                </div>
                <div class="d-flex " style="width: 26%">
                    <input type="text" class="search-food rounded " placeholder="Tìm cửa hàng" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-hot row">

                <div class="col-md-3  ">
                    <div class="hovereffect">
                        <a href="#" >
                            <img class="img-responsive" src="/public/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />

                        </a>
                        <div class="absohovereffect">
                            <a href=""><span ><h2 style="display: inherit; color: white;">Huy Store</h2> </span></a>
                            <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="d-flex justify-content-between" style="width: 100%">
                <div class="profile-text-near">
                   Mọi người
                </div>
                <div class="d-flex " style="width: 26%">
                    <input type="text" class="search-food rounded " placeholder="Tìm người gần bạn" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-near row">
                <div class="col-md-3 ">
                    <div class="hovereffect">
                        <a href="#" >
                            <img class="img-responsive" src="/public/image/images new feed/chinese-625_625x350_81466064119.jpg" alt="" />
                        </a>
                        <div class="absohovereffect">
                            <a href=""><span ><h2 style="display: inherit; color: white;">Chương</h2> </span></a>
                            <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
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
<script src="/public/js/swiper.min.js "></script>
<script src="/public/js/jquery-ui.js"></script>
<script src="http://localhost:9032/socket.io/socket.io.js"></script>
<script src="/public/js/script.js "></script>

</body>
</html>