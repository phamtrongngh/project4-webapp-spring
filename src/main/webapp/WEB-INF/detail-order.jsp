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
                        <i class="fas fa-file-alt"></i> HXKKJDL
                        
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

        <div class="col-md-5 info-user" style="background-color: antiquewhite;border-radius: 16px; padding-top: 10px;margin-top: 22px;">
            
            <div>
                <form class="form-group form-order" action="/order/" method="POST">
                    <div class=" info-more row">
                        <label class="col">Tên cửa hàng </label>
                        <span class="col"> đasa</span>
                       
                    </div>
                    <div class=" info-more row">
                        <label class="col">SĐT cửa hàng </label>
                        <span class="col"> 0344057234</span>
                       
                    </div>
                    <div class=" info-more row">
                        <label class="col">Tên người giao </label>
                        <span class="col"> ádasd</span>
                    </div>
                    <div class=" info-more row">
                        <label class="col">SĐT người giao </label>
                        <span class="col"> 0344057234</span>
                       
                    </div>
                    
                    <div class=" info-more row">
                        <label class="col">Địa chỉ giao hàng:</label>
                        <span class="col" style="word-break: break-all;">ddasdsad sadsadasd sadasdasdsad ádasdsadasdsad</span>
                    </div>
                    <div class="info-more row">
                        <label class="col">Thời Gian:</label><br/>
                        <span class="col">Giao ngay </span>
                    </div>
                    <div class="info-more row">
                        <label class="col">Thanh Toán:</label><br/>
                        <span class="col">Tieenf mat </span>
                    </div>
                    <div class="info-more row">
                        <label class="col">Ghi chú</label><br/>
                        <span class="col" style="word-break: break-all;">ddasdsad sadsadasd sadasdasdsad ádasdsadasdsad</span>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</div>
<!--Bootstrap-->


