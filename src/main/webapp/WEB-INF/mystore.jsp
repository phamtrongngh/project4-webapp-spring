
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerstore.jsp" %>
<div class="container" style="margin: 150px">
    <div class="d-flex justify-content-between">
        <h2>Quản lý cửa hàng</h2>
        <a href="/registerstore" class="btn btn-danger" ><i class="fas fa-plus"></i>Thêm cửa hàng</a>
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
                    <td>${item.active}</td>
                    <td><a href="/statistical" class="btn btn-outline-danger form-control">Quản lý</a></td>
                </tr>
            </c:forEach>

        </tbody>
    </table>

</div>
</body>
</html>
