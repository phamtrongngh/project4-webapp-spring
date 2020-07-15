<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include  file="header.jsp" %>

<div class="container-fluid h-100 " style="margin-top: 100px">
    <div class="row justify-content-center h-100">
        <div class="col-md-4 col-xl-3 chat">
            <div class="card mb-sm-3 mb-md-0 contacts-card">
                <div class="card-header">
                    <div class="input-group">
                        <input type="text" placeholder="Search..." name="" class="form-control search" />
                        <div class="input-group-prepend">
                            <button type="button" class="input-group-text search-btn"><i class="fas fa-search"></i></button>
                        </div>
                    </div>
                </div>
                <div class="card-body contacts-body">
                    <ui class="contacts">
                        <c:forEach var="item" items="${listFriends}">
                            <li class="active rounded ${item._id}" >
                                <div class="d-flex bd-highlight">
                                    <div class="img-cont">
                                        <img src="http://localhost:9032/public/image/${item.avatar}" class="rounded-circle user-img" />
                                    </div>
                                    <div class="user-info">
                                        <span>${item.fullname}</span>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </ui>
                </div>
                <div class="card-footer"></div>
            </div>
        </div>
        <div class="col-md-8 col-xl-6 chat">
            <div class="card">
                <div class="card-header msg-head">
                    <div class="d-flex bd-highlight">
                        <div class="img-cont">
                            <img src="/image/avatar/52bef5587ab0de4ef522e5dd0c5fd8c0.jpg" class="rounded-circle user-img" />
                            <span class="online-icon"></span>
                        </div>
                        <div class="user-info">
                            <span>Chat with Lisa</span>
                        </div>
                    </div>
                    <div class="dropleft action-menu-btn">
                        <button data-toggle="dropdown"><i class="fas fa-ellipsis-v"></i></button>
                        <div class="action-menu dropdown-menu">
                            <ul>
                                <a href="#">
                                    <li class="dropdown-item"><i class="fas fa-user-circle"></i> View profile</li>
                                </a>
                                <a href="#">
                                    <li class="dropdown-item"><i class="fas fa-users"></i> Add to close friends</li>
                                </a>
                                <a href="#">
                                    <li class="dropdown-item"><i class="fas fa-plus"></i> Add to group</li>
                                </a>
                                <a href="#">
                                    <li class="dropdown-item"><i class="fas fa-ban"></i> Block</li>
                                </a>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card-body msg-card-body">
                    <div class="d-flex justify-content-start mb-4">
                        <div class="img-cont-msg">
                            <img src="/image/avatar/52bef5587ab0de4ef522e5dd0c5fd8c0.jpg" class="rounded-circle user-img-msg" />
                        </div>
                        <div class="msg-cotainer">
                            Có đi làm nhóm không ?<br/>
                            <span class="msg-time">8:40 AM, Today</span>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mb-4">
                        <div class="msg-cotainer-send">
                            Ok, làm chứ khi nào đi ?<br/>
                            <span class="msg-time-send">8:55 AM, Today</span>
                        </div>
                        <div class="img-cont-msg">
                            <img src="/image/avatar/chinese-food-logo-design_139869-105.jpg" class="rounded-circle user-img-msg" />
                        </div>
                    </div>
                    <div class="d-flex justify-content-start mb-4">
                        <div class="img-cont-msg">
                            <img src="/image/avatar/52bef5587ab0de4ef522e5dd0c5fd8c0.jpg" class="rounded-circle user-img-msg" />
                        </div>
                        <div class="msg-cotainer">
                            Mai đi, mình đi qua cà phê ngồi
                            <br/> <span class="msg-time">9:00 AM, Today</span>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mb-4">
                        <div class="msg-cotainer-send">
                            Ok, nhớ tới sớm đó lúc nào cũng đi trễ<br/>
                            <span class="msg-time-send">9:05 AM, Today</span>
                        </div>
                        <div class="img-cont-msg">
                            <img src="/image/avatar/chinese-food-logo-design_139869-105.jpg" class="rounded-circle user-img-msg" />
                        </div>
                    </div>
                    <div class="d-flex justify-content-start mb-4">
                        <div class="img-cont-msg">
                            <img src="/image/avatar/52bef5587ab0de4ef522e5dd0c5fd8c0.jpg" class="rounded-circle user-img-msg" />
                        </div>
                        <div class="msg-cotainer">
                            A bận việc thôi<br/>
                            <span class="msg-time">9:07 AM, Today</span>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mb-4">
                        <div class="msg-cotainer-send">
                            Xạo xạo<br/>
                            <span class="msg-time-send">9:10 AM, Today</span>
                        </div>
                        <div class="img-cont-msg">
                            <img src="/image/avatar/chinese-food-logo-design_139869-105.jpg" class="rounded-circle user-img-msg" />
                        </div>
                    </div>
                    <div class="d-flex justify-content-start mb-4">
                        <div class="img-cont-msg">
                            <img src="/image/avatar/52bef5587ab0de4ef522e5dd0c5fd8c0.jpg" class="rounded-circle user-img-msg" />
                        </div>
                        <div class="msg-cotainer">
                            Thật bận việc mà cha <br/>
                            <span class="msg-time">9:12 AM, Today</span>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-end mb-4">
                    <div class="">
                        <div id="workingAnimation">
                            <span></span>
                            <span></span>
                            <span></span>

                        </div>
                    </div>
                    <div class="img-cont-msg">
                        <img src="/image/avatar/chinese-food-logo-design_139869-105.jpg" class="rounded-circle user-img-msg" />
                    </div>
                </div>
                <div class="card-footer">
                    <div class="input-group">
                        <textarea name="" class="form-control type-msg" placeholder="Type your message..."></textarea>
                        <div class="input-group-append">
                            <span class="input-group-text send-btn"><i class="fas fa-location-arrow"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include  file="footer.jsp" %>