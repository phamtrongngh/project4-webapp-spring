
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="container sametaste" style="margin-top: 100px">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-12">
            <div class="d-flex justify-content-between" style="width: 99%">
                <div class="profile-text-hot">
                    Bạn bè của tôi
                </div>
                <div class="d-flex " style="width: 26%">
                    <input type="text" class="search-food rounded " placeholder="Tìm bạn bè" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-hot row">
                <c:forEach var="item" items="${friends}">
                    <div class="col-md-3  ">
                        <div class="hovereffect">
                            <a href="/user-profile/${item.user._id}" >
                                <img class="img-responsive" src="http://localhost:9032/public/image/${item.user.avatar}" alt="" />

                            </a>
                            <div class="absohovereffect">
                                <div class="d-flex">
                                    <a href=""><div style="width: 170px;font-size: 20px; color: white;" >${item.user.fullname}</div></a>
                                    <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="d-flex justify-content-between" style="width: 99%">
                <div class="profile-text-hot">
                    Cùng khẩu vị
                </div>
                <div class="d-flex " style="width: 26%">
                    <input type="text" class="search-food rounded " placeholder="Tìm người cùng khẩu vị" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-hot row">
                <c:forEach var="item" items="${users}">
                    <c:if test="${item._id!=cookie['_id'].getValue()}">
                        <div class="col-md-3  ">
                            <div class="hovereffect">
                                <a href="/user-profile/${item._id}" >
                                    <img class="img-responsive" src="http://localhost:9032/public/image/${item.avatar}" alt="" />

                                </a>
                                <div class="absohovereffect">
                                    <div class="d-flex">
                                        <a href=""><div style="width: 170px;font-size: 20px; color: white;">${item.fullname} </div></a>
                                        <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>

            <div class="d-flex justify-content-between" style="width: 99%">
                <div class="profile-text-near">
                    Gần tôi
                </div>
                <div class="d-flex " style="width: 26%">
                    <input type="text" class="search-food rounded " placeholder="Tìm người gần bạn" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-near row">
                <c:forEach var="item" items="${users}">
                    <c:if test="${item._id!=cookie['_id'].getValue()}">
                        <div class="col-md-3  ">
                            <div class="hovereffect">
                                <a href="/user-profile/${item._id}" >
                                    <img class="img-responsive" src="http://localhost:9032/public/image/${item.avatar}" alt="" />
                                </a>
                                <div class="absohovereffect">
                                    <div class="d-flex">
                                        <a href=""><div style="width: 170px;font-size: 20px; color: white;">${item.fullname} </div></a>
                                        <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
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