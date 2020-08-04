
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="container explorestore" style="margin-top: 100px">
    <div class="row">
        <div class="col-10 col-sm-10 col-md-11">
            <div class="d-flex justify-content-between" style="width: 102%">
                <div class="profile-text-hot">
                    Hot nhất
                </div>
                <div class="d-flex " style="width: 26%;padding-right: 10px;">
                    <input type="text" class="search-food rounded " placeholder="Tìm món ăn đang hot" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" ><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-hot row">
                <c:forEach items="${explorestores}" begin= "1" end="6"  var="item">
                    <div class="col-md-4">
                        <img src="http://localhost:9032/public/image/${item.image}" alt="" />
                        <a href="">${item.name}</a>
                        <div class="text-price">
                            <span class="price-foodnumber">${item.price}</span> 
                            <span>VNĐ</span>
                        </div>
                    </div>
                </c:forEach>
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
            <div class="profile-menu-near row">
                <c:forEach items="${explorestores}" begin= "1" end="6"  var="item">
                    <div class="col-md-4">
                        <img src="http://localhost:9032/public/image/${item.image}" alt="" />
                        <a href="">${item.name}</a>
                        <div class="text-price"><span class="price-foodnumber">${item.price}</span> <span>VNĐ</span> </div>
                    </div>
                </c:forEach>
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
