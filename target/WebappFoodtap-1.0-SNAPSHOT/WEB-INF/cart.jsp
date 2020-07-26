<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container contain" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-7 col-sm-12 info-product">

            <div class="container">
                <div class="card shopping-cart">
                    <div class="card-header text-light" style="background-color: #fc7a7b;">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Giỏ hàng
                        <a href="" class="btn btn-outline-light btn-sm pull-right">Tiếp tục mua hàng</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="card-body">
                        <!-- PRODUCT -->
                        <section class="container content-section">
                            <div class="cart-row">
                                <span class="cart-item cart-header cart-column">Món</span>
                                <span class="cart-price cart-header cart-column">Giá</span>
                                <span class="cart-quantity cart-header cart-column">Số lượng</span>
                            </div>
                            <div class="cart-items">
                                <c:forEach var="item" items="${user.cart}">
                                    <div class="cart-row">
                                        <div class="cart-item cart-column">
                                            <img class="cart-item-image" src="http://localhost:9032/public/image/${item.product.image}" width="100" height="100">
                                            <span class="cart-item-title cart-item-title ">${item.product.name}</span>
                                        </div>
                                        <span class="cart-price cart-column cart-page-price">${item.product.price} VNĐ</span>

                                        <div class="cart-quantity cart-column">
                                            <input class="cart-quantity-input" type="number" value="${item.quantity}" max="100">
                                            <form action="/removeFromCart/${item.product._id}" method="POST">
                                                <button class="btn btn-danger" >Xóa</button>
                                            </form>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                            <div class="cart-total">
                                <strong class="cart-total-title">Tổng:</strong>

                                <span class="cart-total-price">0</span>VNĐ
                                <input type="text" class="cart-total-price-data" style="display: none;"/>
                            </div>

                        </section>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-5 info-user">
            <h1 style="margin-top: 10px;text-align: left;">Thông tin đơn hàng</h1>
            <div>
                <form class="form-group form-order" action="/order/" method="POST">
                    <div class="info-more">
                        <label>Họ tên: </label>
                        <input type="text" name="name" value="${user.fullname}" class="form-control input-name"  />
                    </div>
                    <div class=" info-more">
                        <label>Số điện thoại: </label>
                        <input type="text" name="phone" value="${user.phone}" class="form-control input-sđt"  />
                    </div>
                    <div class=" info-more">
                        <label>Địa chỉ:</label>
                        <input type="text" name="address" value="${user.address}" class="form-control input-sđt"  />
                    </div>
                    <div class="info-more">
                        <label>Thời Gian:</label><br/>
                        <input type="radio" name="time" class="input-radio" checked/>Giao ngay
                        <input type="radio" name="time" class="input-radio2" />Chọn thời gian nhận hàng
                    </div>
                    <div class="info-more">
                        <input type="date" class="form-control input-date"  />
                    </div>
                    <div class="info-more">
                        <label>Thanh Toán:</label><br/>
                        <input type="radio" name="pay" class="input-pay" checked/>Khi nhận hàng
                        <input type="radio" name="pay" class="input-pay2" />Ví điện tử
                    </div>
                    <div class="info-more">
                        <label>Ghi chú</label><br/>
                        <textarea name="note" class="form-control textarea-note"></textarea>
                    </div>
                    <div class="info-pay">
                        <a href="#"><img src="/public/image/avatar/momo.png" class="img-momo" alt="" /></a>
                        <a href="#"><img src="/public/image/avatar/viettelpay.png" class="img-viettel" alt="" /></a>
                    </div>
                    <div class="info-more">
                        <button type="submit" class="btn btn-danger btn-order checkout">Đặt món ngay </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--Bootstrap-->


<%@include  file="footer.jsp" %>