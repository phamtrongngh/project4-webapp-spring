
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
                <th>No.</th>
                <th>Tên cửa hàng </th>
                <th>Trạng thái</th>
                <th>Người sở hữu</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Smartstore</td>
                <td>Đang hoạt động</td>
                <td>Vũ Huy</td>
                <td><a href="/statistical" class="btn btn-outline-danger form-control">Quản lý</a></td>
            </tr>
        </tbody>
    </table>

</div>
</body>
</html>
