<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container contain" style="margin-top: 100px">
    <h1 style="margin-top: 10px;text-align: center;">Thông tin đơn hàng</h1>
    <div class="row">
        <div class="col-md-7 col-sm-12 info-product">
            <div class="container">
                <div class="card shopping-cart">
                    <div class="card-header text-light" style="background-color: #fc7a7b;">
                        <i class="fas fa-file-alt"></i> ${order._id}

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
                                <c:forEach var="item" items="${order.products}">
                                    <div class="cart-row">
                                        <div class="cart-item cart-column">
                                            <img class="cart-item-image" src="http://localhost:9032/public/image/${item.product.image}" width="100" height="100">
                                            <span class="cart-item-title cart-item-title ">${item.product.name}</span>
                                        </div>
                                        <span class="cart-price cart-column cart-page-price">${item.product.price} VNĐ</span>

                                        <div class="cart-quantity cart-column">
                                            <input class="cart-quantity-input" disabled type="number" value="${item.quantity}" max="100">

                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                            <div class="cart-total">
                                <div class="row" style="margin: 0 0 0 35px;font-weight: 100;">
                                    <div class="col">
                                        Tạm tính: 
                                    </div>

                                    <div class="col"><span class="price-foodnumber total-status"></span>VNĐ</div>

                                </div>
                                <div class="row" style="margin: 0 0 0 35px;font-weight: 100;">
                                    <div class="col">
                                        Phí vận chuyển: <span id="distance"></span>km 
                                    </div>
                                    <div class="col"><span class="price-foodnumber fee-status"></span>VNĐ</div>
                                </div>
                                <div class="row" style="margin: 0 0 0 35px;color: #ff0000;">
                                    <div class="col">
                                        Phiếu giảm giá: 
                                    </div>
                                    <div class="col"><span class="price-foodnumber discount-status"></span>VNĐ</div>
                                </div>
                                <div class="row" style="margin: 0 0 0 35px;font-size: 20px;font-weight: 600;">
                                    <div class="col">
                                        Tổng cộng 
                                    </div>
                                    <div class="col"><span class="price-foodnumber totals-status">x`</span>VNĐ</div>
                                </div>
                            </div>

                        </section>
                    </div>
                </div>
                <form action="action">
                    <div>
                        <div class="text-center" style="margin-top: 20px;font-size: 24px;font-weight: 500;color: #da484a;">Hãy đánh giá cho nhà hàng</div>
                        <div style="width: 160px">
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
                        <textarea cols="3" style="width: 100%;"></textarea>
                        <button class="btn btn-success" type="submit">Gửi</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-md-5 info-user" style="background-color: antiquewhite;border-radius: 16px; padding-top: 10px;margin-top: 22px;">

            <div>
                <form class="form-group form-order" action="/order/" method="POST">
                    <div class=" info-more row">
                        <label class="col">Tên cửa hàng </label>
                        <span class="col">${order.restaurant.name}</span>                       
                    </div>
                    <!--                    <div class=" info-more row">
                                            <label class="col">SĐT cửa hàng </label>
                                            <span class="col"> 0344057234</span>
                                        </div>-->

                    <div class=" info-more row">
                        <label class="col">Tên người giao </label>
                        <span class="col"> ${order.shipper.fullname}</span>
                    </div>
                    <div class=" info-more row">
                        <label class="col">SĐT người giao </label>
                        <span class="col"> ${order.shipper.phone}</span>
                    </div>
                    <div class=" info-more row">
                        <label class="col">Tình trạng đơn</label>
                        <span class="col">
                            <c:choose>
                                <c:when test="${order.status=='finding'}">
                                    Đang tìm tài xế
                                </c:when>
                                <c:when test="${order.status=='receiving'}">
                                    Đang đi nhận món
                                </c:when>
                                <c:when test="${order.status=='delivering'}">
                                    Đang giao đến bạn
                                </c:when>
                                <c:when test="${order.status=='canceled'}">
                                    Đã bị hủy
                                </c:when>
                                <c:otherwise>
                                    Đã hoàn thành
                                </c:otherwise>
                            </c:choose>
                        </span>
                    </div>
                    <div class=" info-more row">
                        <label class="col">Địa chỉ giao hàng:</label>
                        <span class="col" style="word-break: break-all;">${order.address}</span>
                    </div>
                    <!--                    <div class="info-more row">
                                            <label class="col">Thời Gian:</label><br/>
                                            <span class="col">Giao ngay </span>
                                        </div>-->
                    <!--                    <div class="info-more row">
                                            <label class="col">Thanh Toán:</label><br/>
                                            <span class="col">Tieenf mat </span>
                                        </div>-->
                    <c:if test="${order.note!=''}">
                        <div class="info-more row">
                            <label class="col">Ghi chú</label><br/>
                            <span class="col" style="word-break: break-all;">${order.note}</span>
                        </div>
                    </c:if>
                </form>
            </div>
            <form action="action">
                <div>
                    <div class="text-center" style="margin-top: 20px;font-size: 24px;font-weight: 500;color: #da484a;">Hãy đánh giá cho tài xế</div>
                    <div style="width: 160px">
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
                    <textarea cols="3" style="width: 100%;"></textarea>
                    <button class="btn btn-success" type="submit">Gửi</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--Bootstrap-->


