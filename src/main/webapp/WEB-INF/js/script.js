/* NAVBAR SCRIPTS */
//jQuery to collapse the navbar on scroll

$(document).ready(function() {
    $('#sothich').modal('show');
    $('.store-sothich').click(function() {

        if ($(this).css("border") == "1px solid rgb(33, 37, 41)") {
            $(this).removeClass('store-sothich-fix');
        }
        else {
            $(this).addClass('store-sothich-fix');
        }

    });

//     for (i = 0; i < sothichs.length; i++) {
//        sothichs[i].onclick = function (){
//        console.log("hi");
//        
//    };
//     }
});
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
    scrollFunction()
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
function getIdOfAnElement(className) {
    return $(className)[0].className.split(" ")[$(className)[0].className.split(" ").length - 1];
}
$(document).ready(function() {

    //Click to show conservation
    $(".contacts-body .contacts li").click(function() {
        var array = this.className.split(" ");
        var id = array[array.length - 1];
        $(".send-btn")[0].className = "input-group-text send-btn " + id;
        callAjax("/message/" + id, "GET");
    })

    //Send message
    $(".send-btn").click(function() {
        if ($(".type-msg").val()) {
            var message = {
                receiver: getIdOfAnElement(".send-btn"),
                content: $(".type-msg").val(),
                messageType: "text"
            }
            callAjax("/message/", "POST", message);
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
            var price = parseFloat(priceElement.innerText.replace('VNĐ', ''))
            var quantity = quantityElement.value
            total = total + (price * quantity)
        }
        total = Math.round(total * 1000);
        var totalformat = format2(total, '').replace(".0", "");


        document.getElementsByClassName('cart-total-price')[0].innerText = totalformat + 'VNĐ';
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
        return currency + n.toFixed(1).replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
    }
//    cart index
    function update() {

        var q = ($(".input-qty").val());
        var tien = $(".price-foodnumber").html();
        var total1 = q * tien;
        total1 = Math.round(total1 * 1000);

        var t = format2(total1, '').replace(".0", "");

        $(".total-foodnumber").html(t + 'VNĐ');


    }

    function quantityChanged1(event) {
        var input = event.target
        if (isNaN(input.value) || input.value <= 0) {
            input.value = 1
        }
        update()
    }
    var quantityInputs1 = $(".input-qty");

    quantityInputs1.on('change', quantityChanged1);
});
//count cart



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
// function loadResults() {
//     var result = "";
//     for (var i = 0; i < 10; i++) {
//         result += "<li>Result " + i + "</li>";
//     }
//     $.ajax({
//         url: "/echo/html/",
//         type: "POST",
//         data: {
//             html: result,
//             delay: 1
//         },
//         beforeSend: function(xhr) {
//             $("#results").after($("<li class='loading'>Loading...</li>").fadeIn('slow')).data("loading", true);
//         },
//         success: function(data) {
//             var $results = $("#results");
//             $(".loading").fadeOut('fast', function() {
//                 $(this).remove();
//             });
//             var $data = $(data);
//             $data.hide();
//             $results.append($data);
//             $data.fadeIn();
//             $results.removeData("loading");
//         }
//     });
// };

// $(function() {
//     loadResults();

//     $(".scrollpane").scroll(function() {
//         var $this = $(this);
//         var $results = $("#results");

//         if (!$results.data("loading")) {

//             if ($this.scrollTop() + $this.height() == $results.height()) {
//                 loadResults();
//             }
//         }
//     });
// });
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
                '<div class="msg_footer"><textarea class="msg_input" rows="10"></textarea><div class="btn-footer">\n\
<button class="bg_none"><i class="fas fa-image"></i></button>\n\
<button class="bg_none"><i class="fas fa-plus"></i></button>\n\
<button class="bg_none pull-right"><i class="fas fa-thumbs-up"></i> </button> \n\
</div></div></div></div>';

        $("body").append(chatPopup);
        displayChatBox();
    });


    $(document).on('keypress', 'textarea', function(e) {
        if (e.keyCode == 13) {
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
        $(".img-store-register").trigger('click');

    });
    $("#chossefile-giayphep").click(function(e) {
        e.preventDefault();
        $(".img-giayphep").trigger('click');
    });
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

//call ajax upload image
$(document).ready(function() {
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



    if (location.hash) {
        $('a[href="' + location.hash + '"]').tab('show');
    }
})