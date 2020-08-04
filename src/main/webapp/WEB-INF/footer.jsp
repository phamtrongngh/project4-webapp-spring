<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- LiST CHAT -->
<div class="msg_box" style="right:270px; display:none" rel="undefined">
    <div class="msg_head">
        Lê Trường Dương
        <div class="close">x</div>
    </div>
    <div class="msg_wrap" style="">
        <div class="msg_body">
            <div class="msg-right">Hello?</div>
            <div class="msg_push">?</div>
            <div class="msg_push">Nice to meet you</div>
        </div>
        <div class="msg_footer">
            <textarea name="msg-input" class="msg_input" rows="10"></textarea>
            <div class="btn-footer">
                <button class="bg_none pull-right"><i class="fa fa-paper-plane"></i> </button> 
            </div>
        </div>
    </div>
</div>
<div class="col-2 col-sm-2 col-md-1 rounded list-friends ">
    <div id="three">
        <div>
            <a class="btn-up "><i class="fa fa-chevron-circle-up " aria-hidden="true "></i></a>
        </div>
        <div class="box" id="chat-sidebar">
            <c:forEach var="item" items="${friends}">
                <div id="sidebar-user-box" >
                    <img src="http://localhost:9032/public/image/${item.user.avatar}" class="rounded-circle img-avatar1 " alt=" " />
                    <span id="slider-username">${item.user.fullname}</span>
                </div>
            </c:forEach>
        </div>
        <div>
            <p class="viewMore"><a href="#"><i class="fa fa-chevron-circle-down "aria-hidden="true "></i></a></p> 
            <p class="viewLess"><a href="#"><i class="fa fa-chevron-circle-down "aria-hidden="true "></i></a></p>
        </div>
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

</body>
</html>