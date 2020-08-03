
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="container sametaste" style="margin-top: 100px">
    <div class="row">
        <div class="col-10 col-sm-10 col-md-11">
            <div class="d-flex justify-content-between" style="width: 98.5%">
                <div class="profile-text-hot">
                    Bạn bè của tôi
                </div>
                <div class="d-flex " style="width: 20%">
                    <input type="text" class="search-food rounded " placeholder="Tìm người cùng khẩu vị" >
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
                                    <a href=""><span ><h2 style="display: inherit; color: white;">${item.user.fullname}</h2> </span></a>
                                    <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
                                </div>
                            </div>
                        </div>
                </c:forEach>
            </div>
        </div>
        <div class="col-10 col-sm-10 col-md-11">
            <div class="d-flex justify-content-between" style="width: 98.5%">
                <div class="profile-text-hot">
                    Cùng khẩu vị
                </div>
                <div class="d-flex " style="width: 20%">
                    <input type="text" class="search-food rounded " placeholder="Tìm người cùng khẩu vị" >
                    <div class="input-group-prepend">
                        <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="profile-menu-hot row">
                <c:forEach var="item" items="${users}">
                    <div class="col-md-3  ">
                        <div class="hovereffect">
                            <a href="/user-profile/${item._id}" >
                                <img class="img-responsive" src="http://localhost:9032/public/image/${item.avatar}" alt="" />

                            </a>
                            <div class="absohovereffect">
                                <a href=""><span ><h2 style="display: inherit; color: white;">${item.fullname}</h2> </span></a>
                                <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="d-flex justify-content-between" style="width: 98.5%">
            <div class="profile-text-near">
                Gần tôi
            </div>
            <div class="d-flex " style="width: 20%">
                <input type="text" class="search-food rounded " placeholder="Tìm người gần bạn" >
                <div class="input-group-prepend">
                    <button class="input-group-text btn-search-hot" id="addon-wrapping"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </div>
        <div class="profile-menu-near row">
            <c:forEach var="item" items="${users}">
                <div class="col-md-3  ">
                    <div class="hovereffect">
                        <a href="/user-profile/${item._id}" >
                            <img class="img-responsive" src="http://localhost:9032/public/image/${item.avatar}" alt="" />
                        </a>
                        <div class="absohovereffect">
                            <a href=""><span ><h2 style="display: inherit; color: white;">${item.fullname}</h2> </span></a>
                            <button class="btn" style="float: right;background-color: #da484a; color: white;"><i class="fas fa-user-plus"></i></button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <%@include file="footer.jsp" %>
