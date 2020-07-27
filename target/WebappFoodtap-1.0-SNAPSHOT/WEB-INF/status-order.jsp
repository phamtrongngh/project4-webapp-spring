<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container contain" style="margin-top: 100px">
    <h1 style="margin-top: 10px;text-align: center;">Trạng thái đơn hàng</h1>
    <div class="row" style="margin-right: 0;">
        <div class="col-md-8 col-sm-12 info-product" style="margin-top: 25px;">

            <div class="container">
                <div id="map"></div>
            </div>
        </div>

        <div class="col-md-4 info-user" style="background-color: antiquewhite;border-radius: 16px; padding-top: 10px;margin-top: 22px;">
            
            <div>
                <form class="form-group form-order" action="/order/" method="POST">
                    <div class=" info-more row">
                        <label class="col">Tình trạng: </label>
                        <span class="col"> Đang lấy...</span>
                       
                    </div>
                    <div class=" info-more row">
                        <label class="col">Tên cửa hàng: </label>
                        <span class="col"> đasadsad</span>
                       
                    </div>
                    <div class=" info-more row">
                        <label class="col">SĐT cửa hàng: </label>
                        <span class="col"> 0344057234</span>
                       
                    </div>
                    <div class=" info-more row">
                        <label class="col">Tên người giao: </label>
                        <span class="col"> ádasd</span>
                    </div>
                    <div class=" info-more row">
                        <label class="col">SĐT người giao: </label>
                        <span class="col"> 0344057234</span>
                       
                    </div>
                    <div class=" info-more" style="margin-left: -15px;">
                        <label >Chi tiết đơn hàng:</label>
                        
                        <div class="row" style="margin: 0 0 0 35px;">
                            <div class="col">
                                <span>1 </span>x 
                                <span>Gà gán<span>
                            </div>
                            <div class="col"><span>70,000</span>VNĐ</div>
                        </div>
                        
                        <div class="row" style="margin: 0 0 0 35px;">
                            <div class="col">
                                <span>1 </span>x 
                                <span>Gà gán<span>
                            </div>
                            <div class="col"><span>70,000</span>VNĐ</div>
                        </div>
                        <hr/>
                        
                        <div class="row" style="margin: 0 0 0 35px;font-weight: 100;">
                            <div class="col">
                               Tạm tính: 
                            </div>
                            <div class="col"><span>140,000</span>VNĐ</div>
                        </div>
                        <div class="row" style="margin: 0 0 0 35px;font-weight: 100;">
                            <div class="col">
                                Phí vận chuyển: <span>2</span>km 
                            </div>
                            <div class="col"><span>10,000</span>VNĐ</div>
                        </div>
                        <div class="row" style="margin: 0 0 0 35px;color: #ff0000;">
                            <div class="col">
                               Phiếu giảm giá: 
                            </div>
                            <div class="col"><span>-50,000</span>VNĐ</div>
                        </div>
                        <div class="row" style="margin: 0 0 0 35px;font-size: 20px;font-weight: 600;">
                            <div class="col">
                               Tổng cộng 
                            </div>
                            <div class="col"><span>100,000</span>VNĐ</div>
                        </div>
                        
                    <div class="row" style="margin: 0 0 0 35px;font-size: 20px;font-weight: 600;">
                        <div class="col">Thanh toán </div>
                        <div class="col"> Tiền mặt</div>
                       
                    </div>
                        <button class="btn btn-danger" style="float: right;margin-bottom: 10px;margin-top: 20px;">Hủy đơn hàng</button>
                    </div>
                    
                    
                </form>
            </div>
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

