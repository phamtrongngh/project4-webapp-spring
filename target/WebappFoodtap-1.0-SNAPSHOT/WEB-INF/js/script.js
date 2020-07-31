/* NAVBAR SCRIPTS */
//jQuery to collapse the navbar on scroll
var idUser = $("#idTag").html();
var avatarChatter;

var fullname;
var phone;
var gender;
var address;
var password;
function updateinfo() {
    fullname = $("#fullname-register").val();
    phone = $("#phone-register").val();
    gender = $("input[name='gender']:checked").val();
    address = $("#address-register").val();
    password = $("#password-register").val();

}

function removeCartItem(event) {
    var buttonClicked = event.target
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
}

function updateCartTotal() {
    var cartItemContainer = document.getElementsByClassName('cart-items')[0]
    var cartRows = cartItemContainer.getElementsByClassName('cart-row')
    var total = 0
    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i]
        var priceElement = cartRow.getElementsByClassName('cart-price')[0]
        var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0]
        var price = priceElement.innerText.toString().replace(",", "");

        price = parseFloat(price.replace('VNĐ', ''));
        price = format2(price, "").replace(".000", "");
        price = price.replace(",", "")
        var quantity = quantityElement.value
        total = total + (price * quantity)

    }
    var priceship=$(".cart-ship-price").html().toString().replace(",", "");
    var cartdiscount =$(".cart-discount").html().toString().replace(",", "");
    
    var carttotalall = parseFloat(total) + parseFloat(priceship) - parseFloat(cartdiscount);
    
    totalformat = Math.round(total * 1000);
    var totalformatdisplay = format2(total, '').replace(".000", "");
    carttotalall = format2(carttotalall, '').replace(".000", "");
    document.getElementsByClassName('cart-total-price')[0].innerText = totalformatdisplay;
    $('.cart-total-price-data').val(total);
    document.getElementsByClassName('cart-total-all')[0].innerText = carttotalall;
}
function formatpricecart() {
    var cartItemContainer = document.getElementsByClassName('cart-items')[0]
    var cartRows = cartItemContainer.getElementsByClassName('cart-row')
    var total = 0
    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i]
        var priceElement = cartRow.getElementsByClassName('cart-price')[0]
        var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0]


        var price = parseFloat(priceElement.innerText.replace('VNĐ', ''));
        price = format2(price, "").replace(".000", "");
        document.getElementsByClassName('cart-page-price')[i].innerText = price + "VNĐ";


    }
}

function addItemToCart(title, price, imageSrc) {
    var cartRow = document.createElement('div')
    cartRow.classList.add('cart-row')
    var cartItems = document.getElementsByClassName('cart-items')[0]
    var cartItemNames = cartItems.getElementsByClassName('cart-item-title')
    for (var i = 0; i < cartItemNames.length; i++) {
        if (cartItemNames[i].innerText == title) {
            alert('This item is already added to the cart')
            return
        }
    }
//        var cartRowContents = '<div class="cart-item cart-column">
//              <img class="cart-item-image" src="${imageSrc}" width="100" height="100">
//              <span class="cart-item-title">${title}</span>
//          </div>
//          <span class="cart-price cart-column">${price}</span>
//          <div class="cart-quantity cart-column">
//              <input class="cart-quantity-input" type="number" value="1">
//              <button class="btn btn-danger" type="button">REMOVE</button>
//          </div>'

    cartRow.innerHTML = cartRowContents
    cartItems.append(cartRow)
    cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', removeCartItem);
    cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged);
}

function quantityChanged(event) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1
    }
    updateCartTotal()
}

function format2(n, currency) {
    return currency + n.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
}
//    cart index
function update() {

    var q = ($(".input-qty").val());
    var tien = $(".price-foodnumber").html().toString();

    tien = tien.replace(",", "");

    var total1 = q * tien;


    var t = format2(total1, '').replace(".000", "");

    $(".total-foodnumber").html(t);


}

function quantityChanged1(event) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1
    }
    update()
}


$(document).ready(function() {
    /*display time*/
    $('input[name=time]').on('change', function(e) {
       
        if ($('input[name=time]:checked').val() == 2) {
            $(".date-cart").css("display", "block");

        } else {
            $(".date-cart").css("display", "none");
        }
    });    
    /*display time*/
    /*display momo*/
    $('input[name=payment]').on('change', function(e) {
       
        if ($('input[name=payment]:checked').val() == 2) {
            $(".info-pay").css("display", "block");

        } else {
            $(".info-pay").css("display", "none");
        }
    });
    /*display momo*/
    $('#sothich').modal('show');
    $('.store-sothich').click(function() {

        if ($(this).css("border") == "1px solid rgb(33, 37, 41)") {
            $(this).removeClass('store-sothich-fix');
        }
        else {
            $(this).addClass('store-sothich-fix');
        }

    });
    /* validate register*/

    $("#fullname-register").on("keyup", function() {
        updateinfo();
        if (!/^([^\s])[a-zA-Z0-9_\s]{1,19}$/.test(change_alias(fullname))) {

            $("#fullname-register").addClass("error-user");
            $("#fullname-register").removeClass("success-user");
            $("#fullname-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-user-mess").css("display", "block");
            $("#fullname-register").focus();
            return false;
        }
        else {
            $("#fullname-register").removeClass("error-user");
            $("#fullname-register").addClass("success-user");
            $("#fullname-register").css("box-shadow", "none");
            $("#fullname-register").css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            $(".error-user-mess").css("display", "none");
        }
    });
    $("#phone-register").on("keyup", function() {
        updateinfo();
        if (!(/^(0|\+84)(\s|\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\d)(\s|\.)?(\d{3})(\s|\.)?(\d{3})$/).test(phone)) {
            $("#phone-register").addClass("error-user");
            $("#phone-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-phone").css("display", "block");
            return false;
        }
        else {
            $("#phone-register").addClass("success-user");
            $("#phone-register").css("box-shadow", "none");
            $("#phone-register").focus(function() {
                $(this).css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            });
            $(".error-phone").css("display", "none");
        }
    });
    $("#password-register").on("keyup", function() {
        updateinfo();
        if (!(/(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/).test(password)) {
            $("#password-register").addClass("error-user");
            $("#password-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-password").css("display", "block");
            return false;
        }
        else {
            $("#password-register").addClass("success-user");
            $("#password-register").css("box-shadow", "none");
            $("#password-register").focus(function() {
                $(this).css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            });
            $(".error-password").css("display", "none");
        }
    });
    $("#address-register").on("keyup", function() {
        updateinfo();
        if (!/^([^\s])[\S\,-_/]{10,}$/.test(change_alias(address))) {
            $("#address-register").addClass("error-user");
            $("#address-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-address").css("display", "block");
            return false;
        }
        else {
            $("#address-register").addClass("success-user");
            $("#address-register").css("box-shadow", "none");
            $("#address-register").focus(function() {
                $(this).css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            });
            $(".error-address").css("display", "none");
        }
    });
    $("#btn-register").on("click", function() {
        updateinfo();
        if (!/^([^\s])[a-zA-Z0-9_\s]{1,19}$/.test(change_alias(fullname))) {

            $("#fullname-register").addClass("error-user");
            $("#fullname-register").removeClass("success-user");
            $("#fullname-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-user-mess").css("display", "block");
            $("#fullname-register").focus();
            return false;
        }
        else {
            $("#fullname-register").removeClass("error-user");
            $("#fullname-register").addClass("success-user");
            $("#fullname-register").css("box-shadow", "none");
            $("#fullname-register").focus(function() {
                $(this).css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            });
            $(".error-user-mess").css("display", "none");
        }

        if (!(/^(0|\+84)(\s|\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\d)(\s|\.)?(\d{3})(\s|\.)?(\d{3})$/).test(phone)) {
            $("#phone-register").addClass("error-user");
            $("#phone-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-phone").css("display", "block");
            return false;
        }
        else {
            $("#phone-register").addClass("success-user");
            $("#phone-register").css("box-shadow", "none");
            $("#phone-register").focus(function() {
                $(this).css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            });
            $(".error-phone").css("display", "none");
        }
        if (!(/(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/).test(password)) {
            $("#password-register").addClass("error-user");
            $("#password-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-password").css("display", "block");
            return false;
        }
        else {
            $("#password-register").addClass("success-user");
            $("#password-register").css("box-shadow", "none");
            $("#password-register").focus(function() {
                $(this).css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            });
            $(".error-password").css("display", "none");
        }
        if (!!/^([^\s])[\S\,-_/]{10,}$/.test(change_alias(address))) {
            $("#address-register").addClass("error-user");
            $("#address-register").focus(function() {
                $(this).css("box-shadow", "rgb(220, 53, 69) 0px 0px 10px 0.2rem");
            });
            $(".error-address").css("display", "block");
            return false;
        }
        else {
            $("#address-register").addClass("success-user");
            $("#address-register").css("box-shadow", "none");
            $("#address-register").focus(function() {
                $(this).css("box-shadow", "#28a745 0px 0px 10px 0.2rem");
            });
            $(".error-address").css("display", "none");
        }
    });
//     for (i = 0; i < sothichs.length; i++) {
//        sothichs[i].onclick = function (){
//        console.log("hi");
//        
//    };
//     }
});

function change_alias(alias) {
    var str = alias;
    str = str.toLowerCase();
    str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
    str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
    str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
    str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
    str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
    str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
    str = str.replace(/đ/g, "d");

    return str;
}
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
        $(".img-logo").css("opacity", "0.2");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
        $(".img-logo").css("opacity", "1");
    }
});

/* BACK TO TOP BUTTON */
// create the back to top button
//Get the button:
mybutton = document.getElementById("myBtn");

// // When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {
    scrollFunction();
};

//Ajax call function

function callAjax(url, type, data, cb) {
    $.ajax({
        url: url,
        type: type,
        data: data,
        success: cb
    })
}
function getReceiveBox(message) {
    var date = new Date(message.createdAt);
    var senderBox = '<div class="msg-time-send">' + date.getHours() + ":" + (date.getMinutes() == "0" ? "00" : date.getMinutes()) + ", " + date.getDate() + "/" + (date.getMonth() + 1) + "/" + date.getFullYear() + '</div>';
    senderBox += '<div class="d-flex justify-content-end mb-4">';
    senderBox += '<div class="msg-cotainer-send">';
    senderBox += message.content;
    senderBox += '<br/>';
    senderBox += '</div>';
    senderBox += '</div>';
    return senderBox;
}

function getSenderBox(message) {
    var date = new Date(message.createdAt);
    var receiveBox = '<div class="msg-time">' + date.getHours() + ":" + (date.getMinutes() == "0" ? "00" : date.getMinutes()) + ", " + date.getDate() + "/" + (date.getMonth() + 1) + "/" + date.getFullYear() + '</div>';
    receiveBox += '<div class="d-flex justify-content-start mb-4">';
    receiveBox += '<div class="img-cont-msg">';
    receiveBox += '<img src="/image/avatar/' + message.avatar + '" class="rounded-circle user-img-msg" />';
    receiveBox += '</div>';
    receiveBox += '<div class="msg-cotainer">';
    receiveBox += message.content;
    receiveBox += '<br/>';
    receiveBox += '</div>';
    receiveBox += '</div>';
    return receiveBox;
}
function showmess() {
    //Click to show conservation
    $(".contacts-body .contacts li").click(function() {
        var id = $(this).attr("idValue");
        var chatBoxvalue = "";
        $(".send-btn").attr("idValue", id)
        callAjax("/message/" + id, "GET", null, function(data) {
            data.messages.forEach(function(item) {
                if (item.sender == id) {
                    chatBoxvalue += getSenderBox(item);
                }
                else {
                    chatBoxvalue += getReceiveBox(item);
                }
            });
            avatarChatter = data.user.avatar;
            $("#chatbox .user-info span").html(data.user.fullname);
            $("#chatbox .img-cont img").attr("src", "http://localhost:9032/public/image/" + data.user.avatar);
            $(".card-body.msg-card-body").html(chatBoxvalue);
            $("#chatbox img").attr("src", "http://localhost:9032/public/image/" + data.user.avatar);

        });
    })
}
$(document).ready(function() {
    /*chat scroll to bottom*/
    $('.msg-card-body').stop().animate({scrollTop: 99999999});
    var messitem = document.getElementsByClassName("li-item-chat")[0];
    $(messitem).trigger("click", showmess());


    //Send message
    $(".send-btn").click(function() {
        if ($(".type-msg").val()) {
            var message = {
                receiver: $(this).attr("idValue"),
                content: $(".type-msg").val(),
                messageType: "text"
            }
            callAjax("/message/", "POST", message);
            $('.type-msg').val('');
            $('.msg-card-body').stop().animate({scrollTop: 99999999});
        }

    })
})

function scrollFunction() {
    if (document.body.scrollTop > 700 || document.documentElement.scrollTop > 700) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
}
// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
//Buttom slideToggle
$(document).ready(function() {
    //tooltip
    $('[data-toggle="tooltip"]').tooltip();


    $(".btn-up").click(function() {
        $('.box').slideToggle();
    });

    $('.box').find('div#sidebar-user-box:gt(3)').hide();
    $('.viewMore, .viewLess').click(function(e) {
        e.preventDefault();
        $('.box').find('div#sidebar-user-box:gt(3)').slideToggle(500);
    });



    $(".btn-down").click(function() {
        $("#three").css("background-color", "white")
        $(".box").slideDown();
    });
});
$(document).ready(function() {
    $(window).scroll(function(event) {
        var pos_body = $('html,body').scrollTop();
        var h = $(window).width();

        if (pos_body > 20 && h > 768) {
            $('#one').addClass("order-fix");
            $('#three').addClass("list-friend-fix");
            $('#four').addClass("mission-fix");
        } else {
            $('#three').removeClass("list-friend-fix");
            $('#one').removeClass("order-fix");
            $('#four').removeClass("mission-fix");

        }

    });
});
// SWIPER
var swiper = new Swiper('.swiper-container', {
    spaceBetween: 30,
    centeredSlides: true,
    // autoplay: {
    //     delay: 2500,
    //     disableOnInteraction: false,
    // },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});
//CART
$(document).ready(function() {

    formatpricecart();
    updateCartTotal();
    var removeCartItemButtons = document.getElementsByClassName('btn-remove');

    for (var i = 0; i < removeCartItemButtons.length; i++) {
        var button = removeCartItemButtons[i]
        button.addEventListener('click', removeCartItem)
    }
    var quantityInputs = document.getElementsByClassName('cart-quantity-input')
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i]
        input.addEventListener('change', quantityChanged);

    }

    var addToCartButtons = document.getElementsByClassName('shop-item-button')
    for (var i = 0; i < addToCartButtons.length; i++) {
        var button = addToCartButtons[i]
        button.addEventListener('click', function(event) {
            var button = event.target
            var shopItem = button.parentElement.parentElement
            var title = shopItem.getElementsByClassName('title-food')[0].innerText
            var price = shopItem.getElementsByClassName('cart-food')[0].innerText
            var imageSrc = shopItem.getElementsByClassName('img-status')[0].src
            addItemToCart(title, price, imageSrc)
            updateCartTotal()
        });
    }




});
//count cart
$(".input-qty").on('change', quantityChanged1);


//messenger
$(document).ready(function() {
    var messs = document.getElementsByClassName('dropdown-messenger')[0];
    var string_mess = messs.getElementsByClassName('messenger-content');
    for (var i = 0; i < string_mess.length; i++) {
        if (string_mess[i].innerText.length > 36) {
            string_mess[i].innerHTML = string_mess[i].innerText.substr(0, 36) + " ...";
        }
    }
});

//load post

$(window).scroll(function() {


    if ($(this).scrollTop() + $(this).height() - 110 > $(".scrollpost").height()) {
        $(window).stop();
        $("#loading").css("display", "block");
    }
    else {
        $("#loading").css("display", "none");
    }

});
function loadResults() {

}
//Popup chat
$(document).ready(function() {

    var arr = []; // List of users 

    $(document).on('click', '.msg_head', function() {
        var chatbox = $(this).parents().attr("rel");
        $('[rel="' + chatbox + '"] .msg_wrap').slideToggle('slow');
        return false;
    });


    $(document).on('click', '.close', function() {
        var chatbox = $(this).parents().parents().attr("rel");
        $('[rel="' + chatbox + '"]').hide();
        arr.splice($.inArray(chatbox, arr), 1);
        displayChatBox();
        return false;
    });

    $(document).on('click', '#sidebar-user-box', function() {
        var userID = $(this).attr("class");
        var username = $(this).children().text();

        if ($.inArray(userID, arr) != -1) {
            arr.splice($.inArray(userID, arr), 1);
        }

        arr.unshift(userID);
        chatPopup = '<div class="msg_box" style="right:270px" rel="' + userID + '">' +
                '<div class="msg_head">' + username +
                '<div class="close">x</div> </div>' +
                '<div class="msg_wrap"> <div class="msg_body"> <div class="msg_push"></div> </div>' +
                '<div class="msg_footer"><textarea name="msg-input" class="msg_input" rows="10"></textarea><div class="btn-footer">\n\
<button class="bg_none"><i class="fas fa-image"></i></button>\n\
<button class="bg_none"><i class="fas fa-plus"></i></button>\n\
<button class="bg_none pull-right"><i class="fas fa-thumbs-up"></i> </button> \n\
</div></div></div></div>';

        $("body").append(chatPopup);
        displayChatBox();
    });


    $(document).on('keypress', 'textarea[name=msg-input]', function(e) {
        if (e.keyCode == 13 && !e.shiftKey) {
            var msg = $(this).val();
            $(this).val('');
            if (msg.trim().length != 0) {
                var chatbox = $(this).parents().parents().parents().attr("rel");
                $('<div class="msg-right">' + msg + '</div>').insertBefore('[rel="' + chatbox + '"] .msg_push');
                $('.msg_body').scrollTop($('.msg_body')[0].scrollHeight);
            }
        }
    });

    function displayChatBox() {
        i = 270; // start position
        j = 350; //next position

        $.each(arr, function(index, value) {
            if (index < 3) {
                $('[rel="' + value + '"]').css("right", i);
                $('[rel="' + value + '"]').show();
                i = i + j;
            } else {
                $('[rel="' + value + '"]').hide();
            }
        });
    }

});

$(document).ready(function() {
    //Initialize tooltips
    $('.nav-tabs > li a[title]').tooltip();

    //Wizard
    $('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
        var target = $(e.target);
        if (target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function() {
        var active = $('.nav-tabs li  a.active');
        active.parent().next().find('.nav-link').removeClass('disabled');
        nextTab(active);
    });

    $(".prev-step").click(function() {
        var active = $('.nav-tabs li a.active');
        prevTab(active);
    });

    $("#chossefile").click(function(e) {
        e.preventDefault();
        $(this).closest(".gallery").find(".img-store-register").trigger('click');

    });
    $(".choosefile").click(function(e) {
        e.preventDefault();
        $(this).closest(".gallery").find(".img-store-register").trigger('click');

    });
    $("#chossefile-giayphep").click(function(e) {
        e.preventDefault();
        $(".img-giayphep").trigger('click');
    })
    //datepicker
    $(function() {
        $("#datepicker-history").datepicker();

    });
    $(".datepicker-history1").click(function() {
        $("#datepicker-history").datepicker('show');
    })
});
function nextTab(elem) {
    $(elem).parent().next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).parent().prev().find('a[data-toggle="tab"]').click();
}



$(document).ready(function() {
    $('#dtBasicExample').DataTable();
    $('.dataTables_length').addClass('bs-select');
});
$(document).ready(function() {
    $('#dtmenu').DataTable();
    $('.dataTables_length').addClass('bs-select');
});


$(document).ready(function() {
    //Online Momo Payment
    $(".btn-order.checkout").click(function() {
        var quantityArray = $(".cart-quantity-input");
        var productArray = $("input[name='product']");
        var payment = $("input[name='payment']:checked").val();
        var products = [];
        for (var i = 0; i < quantityArray.length; i++) {
            products[i] = {
                product: productArray[i].value,
                quantity: Number.parseFloat(quantityArray[i].value)
            }
        }

        var data = {
            address: $("input[name='address']").val(),
            note: $("textarea[name='note']").val(),
            payment: payment,
            amount: Number.parseFloat($(".cart-total-price-data").val()),
            user: $("input[name='user']").val(),
            products: products
        }
        $.ajax({
            url: "/order/",
            type: "POST",
            contentType: "application/json;charset=UTF-8",
            dataType: 'json',
            data: JSON.stringify(data),
            success: function(data) {
                window.location.href = data;
            }
        })
    })

    //binding data to open newfeed
    $(".fa-utensils").click(function() {
        var image = $(this).closest(".status").find(".background");
        var content = $(this).closest(".status").find(".font1");
        var idProduct = $(this).attr("idValue");
        callAjax("/getProduct/" + idProduct, "GET", null, function(data) {
            $("#orderModal .img-status").attr("src", image.attr("src"));
            $("#orderModal .title-food").html(data.name);
            $("#orderModal .content-food").html(content.html());
            data.price = (format2(data.price, '')).replace(".000", "");
            $("#orderModal .price-foodnumber").html(data.price);
            $("#orderModal .total-foodnumber").html(data.price);
            $("#orderModal .shop-item-button").attr("idValue", idProduct);
        })

    })
    //add to cart and remove from cart
    $(".shop-item-button").click(function() {
        var quantity = $("#orderModal .input-qty").val();
        var idProduct = $(this).attr("idValue");
        callAjax("/addToCart", "POST", {
            product: idProduct,
            quantity: quantity
        }, function(data) {
            $("#orderModal").modal("hide");
            $("#myCart span").html(data);
            $("#myCart").css("display", "block");
        })
    })
    $(".removeCart").click(function() {
        var idProduct = $(this).attr("idValue");
        callAjax("/removeFromCart/" + idProduct, "POST", {
        }, function(data) {
            if (data == "0") {
                $("#myCart").css("display", "none");
            } else {
                $("#myCart span").html(data);
            }
            window.location.href = "/cart"
        })
    })
    //binding data to post food newfeed
    $(".postFoodNewFeed").click(function() {
        var image = $(this).parent().parent().parent().find("img");
        var id = $(this).attr("idValue");
        $("#postModal-food img").attr("src", image.attr("src"));
        $("#postModal-food form").attr("action", "/newfeed/postFoodNewFeed/" + id);
    })
    //call ajax upload image
    $("input[type=file]").change(function() {

        var imageFrame = $(this).parent().siblings(0).children(0);
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {

                imageFrame.css('background-image', 'url("' + e.target.result + '")')
            }
            reader.readAsDataURL(this.files[0]);
        }
    })


    //auto switch tab bar with # in url
    if (location.hash) {
        $('a[href="' + location.hash + '"]').tab('show');
    }

    //SOCKETIO receive message chat
    var socket = io('http://localhost:9032');
    socket.on("sendMessage", function(item) {
        var chatBoxvalue = "";
        if (item.sender != idUser) {
            chatBoxvalue += getSenderBox(item);
        }
        else {
            chatBoxvalue += getReceiveBox(item);
        }
        $(".card-body.msg-card-body").append(chatBoxvalue);
        $("#chatbox .img-cont img").attr("src", "http://localhost:9032/public/image/" + avatarChatter);
        $("#chatbox img").attr("src", "http://localhost:9032/public/image/" + avatarChatter);
    })
})
//Search
$(document).ready(function() {
    //display like
    $(".like-newpost").on("click", function() {
        if ($(this).hasClass("fa-heart")) 
        {
            $(this).removeClass("fa-heart");
            $(this).removeClass("fa");
            $(this).addClass("fab");
            $(this).addClass("fa-gratipay");
        }
        else{
           
            $(this).removeClass("fa-gratipay");
            $(this).removeClass("fab");
            $(this).addClass("fa");
            $(this).addClass("fa-heart");
        }
    });
    $("#dropdownMenuButton").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#List a").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
    // Get the input field
    var input = document.getElementById("type_msg");
// Execute a function when the user releases a key on the keyboard
    input.addEventListener("keyup", function(event) {
        // Number 13 is the "Enter" key on the keyboard
        if (event.keyCode == 13 && !event.shiftKey) {
            // Cancel the default action, if needed
            event.preventDefault();
            // Trigger the button element with a click
            document.getElementById("send_btn").click();
        }
    });
 
});
$(document).ready(function(){
    document.getElementById("btn_copy").addEventListener("click", copy_coupon);
});
function copy_coupon() {
    var copyText = document.getElementById("coupon");
    var textArea = document.createElement("textarea");
    textArea.value = copyText.textContent;
    document.body.appendChild(textArea);
    textArea.select();
    document.execCommand("Copy");
    textArea.remove();
}
$(document).ready(function() {
    document.getElementById("btn-follow").addEventListener("click", ChangButtonFollow);
});
function ChangButtonFollow() {
    var x = document.getElementById("btn-follow");
    if (x.innerHTML === '<i class="fas fa-user-circle"></i>Theo dõi') {
        x.innerHTML = "Đang theo dõi";
    } else {
        x.innerHTML = '<i class="fas fa-user-circle"></i>Theo dõi';
    }
}
$(document).ready(function() {
    document.getElementById("btn-friends").addEventListener("click", ChangButtonFriends);
});
function ChangButtonFriends() {
    var x = document.getElementById("btn-friends");
    if (x.innerHTML === '<i class="fas fa-user-plus"></i>Kết bạn') {
        x.innerHTML = '<i class="fas fa-user-friends"></i>Bạn bè';
    } else {
        x.innerHTML = '<i class="fas fa-user-plus"></i>Kết bạn';
    }
}
$(document).ready(function() {
    document.getElementById("btn-like").addEventListener("click", ChangButtonLike);
});
function ChangButtonLike() {
    var x = document.getElementById("btn-like");
    if (x.innerHTML === '<i class="far fa-thumbs-up"></i>Thích') {
        x.innerHTML = '<i class="far fa-thumbs-up"></i>Đã thích';
    } else {
        x.innerHTML = '<i class="far fa-thumbs-up"></i>Thích';
    }
}