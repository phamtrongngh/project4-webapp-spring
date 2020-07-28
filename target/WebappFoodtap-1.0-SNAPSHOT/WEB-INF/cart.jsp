<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- The Modal -->
        <div class="modal" id="mapModel">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title"> Bản đồ</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div id="map"></div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger submit" >Chấp nhận</button>
                    </div>
                </div>
            </div>
        </div>
<div class="container contain" style="margin-top: 100px">
    <div class="row">

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
                        <div class="form-inline">
                            <input id="address-register" type="text" name="address" value="${user.address}" class="form-control input-address" >
                            
                            <div class="input-group-prepend">
                                <button  type="button" class="input-group-text btn-location" data-toggle="modal" data-target="#mapModel" style="display: block;" ><i class="fas fa-map-marker-alt" style="color: red;"></i></button>
                            </div>
                        </div>
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
                        <input type="radio" name="pay" class="input-pay" checked value="1"/>Khi nhận hàng
                        <input type="radio" name="pay" class="input-pay2" value="2"/>Ví điện tử
                    </div>
                    <div class="info-pay">
                        <a href="#"><img src="/public/image/avatar/momo.png" class="img-momo" alt="" /></a>
                        <a href="#"><img src="/public/image/avatar/viettelpay.png" class="img-viettel" alt="" /></a>
                    </div>
                    <div class="info-more">
                        <label>Ghi chú</label><br/>
                        <textarea name="note" class="form-control textarea-note"></textarea>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-7 col-sm-12 info-product">
            <div class="container">

                <div class="card shopping-cart">
                    <div class="card-header text-light" style="background-color: #fc7a7b;">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> ${user.cart[0].product.restaurant.name}
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
                                        <input value="${item.product._id}" hidden name="product"/>
                                        <div class="cart-item cart-column">
                                            <img class="cart-item-image" src="http://localhost:9032/public/image/${item.product.image}" width="100" height="100">
                                            <span class="cart-item-title cart-item-title ">${item.product.name}</span>
                                        </div>
                                        <span class="cart-price cart-column cart-page-price">${item.product.price} VNĐ</span>

                                        <div class="cart-quantity cart-column">
                                            <input class="cart-quantity-input" type="number" value="${item.quantity}" max="100">

                                            <button idValue="${item.product._id}" class="btn btn-danger removeCart" >Xóa</button>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="cart-total row" style="font-weight: 100;">
                                <div class="cart-total-title">Tạm tính:</div>

                                <div class="col"><span class="cart-total-price">0</span>VNĐ</div>
                                <input type="text" class="cart-total-price-data" style="display: none;"/>
                            </div>
                            <div class="cart-total row" style="font-weight: 100;">
                                <div class="cart-total-title">Phí vận chuyển: <span>2</span>km</div>

                                <div class="col"><span class="cart-total-price">0</span>VNĐ</div>

                            </div>
                            <div class="cart-total row" >
                                <div class="cart-total-title">Mã giảm giá:</div>
                                <div class="col">
                                    <input type="text" style="width: 100%"  />
                                </div>


                            </div>
                            <div class="cart-total row" style="color: #ff0000;">
                                <div class="cart-total-title">Phiếu giảm giá:</div>

                                <div class="col">-<span class="cart-total-price">0</span>VNĐ</div>

                            </div>
                            <div class="cart-total row" style="font-size: 20px;font-weight: 600;">
                                <div class="cart-total-title">Tổng:</div>

                                <div class="col"><span class="cart-total-price">0</span>VNĐ</div>

                            </div>

                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="info-more" style="text-align: center;padding-bottom: 50px;">
        <button type="submit" class="btn btn-danger btn-order checkout">Đặt món ngay </button>
    </div>
</div>
<!--Bootstrap-->
<script src="/public/js/bootstrap/jquery-3.5.1.slim.min.js "></script>
<script src="/public/js/jquery/jquery.min.js"></script>
<script src="/public/js/bootstrap/popper.min.js "></script>
<script src="/public/js/bootstrap/bootstrap.min.js "></script>
<script src="/public/js/swiper.min.js "></script>
<script src="/public/js/script.js "></script>
<script async defered>
    goongjs.accessToken = '06aQWUB2EF6R8iKTMJbBf9plN5ZpZcAmEzXlRqdP';
    var map = new goongjs.Map({
        container: 'map', // container id
        style: 'https://tiles.goong.io/assets/goong_map_web.json', // stylesheet location
        center: [105, 21], // starting position [lng, lat]
        zoom: 9 // starting zoom
    });

    var geocoder = new GoongGeocoder({
        accessToken: "rBiYNcmLhEbdjUw21NQt5mb3Qbm1SrRqdWSru7Pm",
        goongjs: goongjs
    })

    var geolocateControl = new goongjs.GeolocateControl({
        positionOptions: {
            enableHighAccuracy: true
        },
        trackUserLocation: true
    })

    map.addControl(new goongjs.FullscreenControl());

    map.on('load', function() {
        map.addSource('single-point', {
            type: 'geojson',
            data: {
                type: 'FeatureCollection',
                features: []
            }
        });
        map.addControl(
                geocoder
                )
        map.addControl(
                geolocateControl
                );
        map.addLayer({
            id: 'point',
            source: 'single-point',
            type: 'circle',
            paint: {
                'circle-radius': 10,
                'circle-color': '#448ee4'
            }
        });
    });

    var marker = new goongjs.Marker({
        draggable: true
    })
            .setLngLat([105, 21])
            .addTo(map);

    marker.on('dragend', function() {

        var lngLat = marker.getLngLat();
        fetch('https://rsapi.goong.io/Geocode?latlng=' + lngLat.lat + ',' + lngLat.lng + '&api_key=qKvO3Yc2cMFMVB4NKEGsMkm0FgMrQO1pqXmPUaup&limit=1')
                .then(function(response) {
                    return response.json()
                })
                .then(function(data) {
                    $(".input-address").val(data.results[0].formatted_address);
                });
    });
    geolocateControl.on("geolocate", function(e) {
        var lng = e.coords.longitude;
        var lat = e.coords.latitude;
        marker._lngLat = {lat: lat, lng: lng}
        fetch('https://rsapi.goong.io/Geocode?latlng=' + lat + ',' + lng + '&api_key=rBiYNcmLhEbdjUw21NQt5mb3Qbm1SrRqdWSru7Pm', {mode: "cors"})
                .then(function(response) {
                    return response.json()
                })
                .then(function(data) {
                    $(".input-address").val(data.results[0].formatted_address);
                });
    })
    geocoder.on("result", function(e) {
        geocoder.mapMarker.remove();
        marker._lngLat = geocoder.mapMarker._lngLat;
        $(".input-address").val(e.result.description);
    })
    $(".btn-location").click(function() {
        $(".goongjs-ctrl-fullscreen").trigger("click");
    })
    $("#mapModel .modal-footer button").click(function() {
        $("#mapModel").modal("hide");
    })
    $(".close").click(function() {
        $(".input-address").val("");
        $("#mapModel").modal("hide");
    })
</script>
</body>

</html>
