
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="container" style="margin-top: 150px">
    <div class="d-flex justify-content-between">
        <h2>Quản lý cửa hàng</h2>
        <a href="/registerstore" class="btn btn-danger" ><i class="fas fa-plus" style="margin-right: 10px;"></i>Thêm cửa hàng</a>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th>Ảnh đại diện</th>
                <th>Tên cửa hàng </th>
                <th>Trạng thái</th>
                <th>Người sở hữu</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${listRestaurants}">
                    <tr>
                        <td><img height="100" width="100" src="http://localhost:9032/public/image/${item.avatar}" /></td>
                        <td>${item.name}</td>
                        <td>${item.verified?"Hoạt động":"Chưa có giấy phép"}</td>
                        <td><a href="/user-profile/${item.managers[0].user._id}">${item.managers[0].user.fullname}</a></td>
                        <td><div style="width: 120px"><a href="/manageMyRestaurant/${item._id}" class="btn btn-outline-danger form-control">Quản lý</a></div></td>
                        <td><div style="width: 120px"><a href="/store-profile" class="btn btn-outline-primary form-control">Trang</a></div></td>
                    </tr>
            </c:forEach>

        </tbody>
    </table>

</div>
</body>
</html>
