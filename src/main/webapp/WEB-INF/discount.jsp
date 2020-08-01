<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>

<!-- Modal restaurant -->

<div class="modal fade" id="storeModal" tabindex="-1" role="dialog" aria-labelledby="storeModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document" style="max-width:75%!important;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Các cửa hàng áp dụng</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">

                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-3 store-modal-discount">
                        <a href="">
                            <div style="position: relative;">
                                <img src="/public/image/avatar/momo.png"  width="100%" height="254px"/>
                                <div class="name-store-modal-discount">Bánh mì Bảo Quyên</div>
                            </div>
                        </a>
                    </div>
                </div>                
            </div>
        </div>
    </div>
</div>
<!-- Modal error -->

<div class="modal fade" id="Modallikeshare" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document" style="max-width:40%!important;">
        <div class="modal-content">
            <div class="modal-body">
                <ul class="nav nav-tabs flex-nowrap text-center" role="tablist" >
                    <li role="presentation" class="nav-item" style="width:50%">
                        <a href="#steplike" class="nav-link active" data-toggle="tab" aria-controls="steplike" role="tab" title="Like"><i class="fas fa-heart"></i> Lượt thích: <span>500</span></a>
                    </li>
                    <li role="presentation" class="nav-item" style="width:50%">
                        <a href="#stepshare" class="nav-link" data-toggle="tab" aria-controls="stepshare" role="tab" title="Share"><i class="fas fa-share-alt"></i> Lượt chia sẻ: <span>600</span></a>
                    </li>
                </ul>
                <div class="tab-content py-2 "  style="height: 400px;overflow-y: auto;overflow-x: hidden;padding-right: 10px;">
                    <div class="tab-pane active" role="tabpanel" id="steplike">
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fab fa-facebook-messenger"></i> Nhắn tin</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="stepshare">
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fab fa-facebook-messenger"></i> Nhắn tin</button>
                            </div>
                        </div>
                        <div class="row row-like">
                            <div class="col-md-2">
                                <img src="/public/image/avatar/momo.png" class="rounded-circle img-like" />
                            </div>
                            <div class="col-md-4">
                                <span>Trường</span>
                            </div>
                            <div class="ml-auto p-2 bd-highlight">
                                <button class="btn"><i class="fas fa-user-plus"></i> Thêm bạn bè</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--<div class="modal fade" id="sothich" role="dialog" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-sothich">
        <div class="modal-content modal-content-sothich">
            <div class="modal-header" style="background-color: #da484a;color: white;">
                <h4 class="modal-title">Hãy chọn 3 mục bạn yêu thích nhất</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>
                    <div class="col-md-3 text-center" >
                        <div class="store-sothich">
                            <image src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" class="img-store" alt=""/>
                            <div>Gà gán</div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn" style="background-color: #da484a;color: white;">Save changes</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>-->
<!--Content-->
<div class="container" style="margin-top: 100px">
    <div class="body-hide"></div>
    <div class="row">
        <!-- ORDER -->
        <div class="col-sm-12 col-md-2 ">
            <div id="one" >
                <div id="left-menu">
                    <a href="explorestore"><img class="rounded img-order" src="/public/image/Background/87801571-cartoon-fast-food-unhealthy-burger-sandwich-hamburger-pizza-meal-restaurant-menu-snack-vector-illust.jpg" alt="" />
                        <div class="rounded photo">
                            <div>
                                Khám phá<br/> món ngon

                            </div>

                        </div>
                    </a>
                </div>
                <div id="left-menu" style="margin-top: 20px">
                    <a href="/sametaste"><img class="rounded img-order" src="/public/image/Background/set-of-children-eating-together-vector-22784582.jpg" alt="" />
                        <div class="rounded photo ">
                            <div>
                                Bạn cùng<br/> khẩu vị
                            </div>
                        </div>
                    </a>
                </div>
                <div id="left-menu" style="margin-top: 20px">
                    <a href="/mystore"><img class="rounded img-order" src="/public/image/Background/street-food-trailer-food-truck-cartoon-vector-19682966.jpg" alt="" />
                        <div class="rounded photo ">

                            Cửa hàng<br/> của tôi

                        </div>
                    </a>
                </div>
                <div id="left-menu" style="margin-top: 20px">
                    <a href="#"><img class="rounded img-order" src="/public/image/Background/sale-tag-icon-flat-cartoon-discount-label-vector-23608810.jpg" alt="" />

                        <div class="rounded photo ">
                            <div>
                                Phiếu ăn<br/>giảm giá
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- STATUS -->
        <div class="col-12 col-sm-12 col-md-6 scrollpost" style="background-color: white;">
            <c:forEach var="item" items="${coupons}">
                <div class="d-flex bd-highlight mb-3">
                    <div class="p-2 bd-highlight">
                        <img src="http://localhost:9032/public/image/${item.image}" width="200px" height="100%"/>
                    </div>
                    <div class="p-2 bd-highlight">
                        <div><a href="" data-toggle="modal" data-target="#storeModal">${item.code}</a></div>
                        <div>${item.description}</div>
                    </div>
                </div>
            </c:forEach>

        </div>
        <!-- Khuyen mai -->
        <div class="col-md-3">
            <div id="four">
                <div class="header-mission"><h4><i class="fa fa-list-alt" aria-hidden="true"></i> Nhiệm vụ tháng</h4></div>
                <div class="mission">

                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%"  aria-valuemin="0" aria-valuemax="100"></div>

                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 2 món tặng bạn bè sẽ được tặng voucher 200.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>



                        </div>
                        <div style="text-align: end;">1/2</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>

                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>
                </div>
                <div class="header-mission"><h4><i class="fa fa-list-alt" aria-hidden="true"></i> Nhiệm vụ ngày</h4></div>
                <div class="mission">

                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%"  aria-valuemin="0" aria-valuemax="100"></div>

                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 2 món tặng bạn bè sẽ được tặng voucher 200.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>



                        </div>
                        <div style="text-align: end;">1/2</div>
                    </div>
                    <div class="detail-mission">
                        Đặt 3 món trong hôm nay sẽ được tặng voucher 20.000đ
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>


                        </div>
                        <div style="text-align: end;">3/4</div>
                    </div>

                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
