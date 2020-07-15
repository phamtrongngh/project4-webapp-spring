<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

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
                                <span class="cart-item cart-header cart-column">ITEM</span>
                                <span class="cart-price cart-header cart-column">PRICE</span>
                                <span class="cart-quantity cart-header cart-column">QUANTITY</span>
                            </div>
                            <div class="cart-items">
                                <div class="cart-row">

                                    <div class="cart-item cart-column">
                                        <img class="cart-item-image" src="image/images new feed/buffalo-wings.jpg" width="100" height="100">
                                        <span class="cart-item-title">Buffalo</span>
                                    </div>
                                    <span class="cart-price cart-column">19.000 VNĐ</span>

                                    <div class="cart-quantity cart-column">
                                        <input class="cart-quantity-input" type="number" value="1" max="999">
                                        <button class="btn btn-danger btn-remove" type="button">REMOVE</button>
                                    </div>
                                </div>
                                <div class="cart-row">
                                    <div class="cart-item cart-column">
                                        <img class="cart-item-image" src="image/images new feed/fruity-tingle-ice-cream-cones-121035-1.jpg" width="100" height="100">
                                        <span class="cart-item-title">Kem</span>
                                    </div>
                                    <span class="cart-price cart-column">20.000 VNĐ</span>
                                    <div class="cart-quantity cart-column">
                                        <input class="cart-quantity-input" type="number" value="1" min="1" max="999">
                                        <button class="btn btn-danger btn-remove" type="button">REMOVE</button>
                                    </div>
                                </div>

                            </div>
                            <div class="cart-total">
                                <strong class="cart-total-title">Total</strong>

                                <span class="cart-total-price">0 VNĐ</span>

                            </div>

                        </section>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-md-5 info-user">

            <h1 style="margin-top: 20px;text-align: left;">Thông tin đơn hàng</h1>
            <div>
                <form class="form-group form-order">
                    <div class="info-more">
                        <label>Họ tên: </label>
                        <input type="text" class="form-control input-name" placeholder="Họ tên" />
                    </div>
                    <div class=" info-more">
                        <label>Số điện thoại: </label>
                        <input type="text" class="form-control input-sđt" placeholder="Số điện thoại" />
                    </div>
                    <div class=" info-more">
                        <label>Địa chỉ:</label>
                        <select class="form-control select-city">
                            <option value="" disabled selected>Tỉnh/Thành phố</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                    <div class="info-more">
                        <select class="form-control select-district">
                            <option value="" disabled selected>Quận/Huyện</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                    <div class="info-more">
                        <select class="form-control select-ward">
                            <option value="" disabled selected>Xã/Phường</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                    <div class="info-more">
                        <input type="text" class="form-control input-address" placeholder="Địa chỉ..." />
                    </div>
                    <div class="info-more">
                        <label>Thời Gian:</label><br/>
                        <input type="radio" name="time" class="input-radio" checked/>Giao ngay
                        <input type="radio" name="time" class="input-radio2" />Chọn thời gian nhận hàng
                    </div>
                    <div class="info-more">
                        <input type="date" class="form-control input-date" placeholder="Địa chỉ..." />
                    </div>
                    <div class="info-more">
                        <label>Thanh Toán:</label><br/>
                        <input type="radio" name="pay" class="input-pay" checked/>Khi nhận hàng
                        <input type="radio" name="pay" class="input-pay2" />Ví điện tử
                    </div>
                    <div class="info-more">
                        <label>Ghi chú</label><br/>
                        <textarea class="form-control textarea-note"></textarea>
                    </div>
                    <div class="info-pay">
                        <a href="#"><img src="./image/avatar/momo.png" class="img-momo" alt="" /></a>
                        <a href="#"><img src="./image/avatar/viettelpay.png" class="img-viettel" alt="" /></a>
                    </div>
                    <div class="info-more">
                        <button type="button" class="btn btn-danger btn-order checkout">Đặt món ngay </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--Bootstrap-->


<%@include  file="footer.jsp" %>