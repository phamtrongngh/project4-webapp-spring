/* NAVBAR SCRIPTS */
//jQuery to collapse the navbar on scroll
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
        $(".img-logo").css("opacity", "0.2");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
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
function callAjax(url, type, data, fn) {
    $.ajax({
        url: url,
        type: type,
        data: data,
        success: fn
    });
}
function getReceiveBox(message) {
    var senderBox = '<div class="d-flex justify-content-end mb-4">';
    senderBox += '<div class="msg-cotainer-send">';
    senderBox += message.content;
    senderBox += '<br/>';
    senderBox += '<span class="msg-time-send">' + message.createAt + '</span>';
    senderBox += '</div>';
    senderBox += '</div>';
    return senderBox;
}

function getSenderBox(message) {
    var receiveBox = '<div class="d-flex justify-content-start mb-4">';
    receiveBox += '<div class="img-cont-msg">';
    receiveBox += '<img src="/image/avatar/'+message.avatar+'" class="rounded-circle user-img-msg" />';
    receiveBox += '</div>';
    receiveBox += '<div class="msg-cotainer">';
    receiveBox += message.content;
    receiveBox += '<br/>';
    receiveBox += '<span class="msg-time">' + message.createAt + '</span>';
    receiveBox += '</div>';
    receiveBox += '</div>';
    return receiveBox;
}

$(document).ready(function() {
    //Click to show conservation
    $(".contacts-body .contacts li").click(function() {
        var id = $(this).attr("idValue");
        var chatBox = $(".card-body.msg-card-body");
        var chatBoxvalue = "";
        $(".send-btn").attr("idValue",id)
        callAjax("/message/" + id, "GET", null, function(data) {
            data.forEach(function(item) {
                if (item.sender == id) {
                    chatBoxvalue += getSenderBox(item);
                }
                else {
                    chatBoxvalue += getReceiveBox(item);
                }
            });
            $(".card-body.msg-card-body").html(chatBoxvalue);
        });
    })

    //Send message
    $(".send-btn").click(function() {
        if ($(".type-msg").val()) {
            var message = {
                receiver: $(this).attr("idValue"),
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

// // When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
$(document).ready(function() {
    $(".btn-up ").click(function() {
        $(".list-friends").css("background", "none");
        $(".box").slideUp();


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


        } else {
            $('#three').removeClass("list-friend-fix");
            $('#one').removeClass("order-fix");

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


        document.getElementsByClassName('cart-total-price')[0].innerText = format2(total, '') + 'VNĐ'
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
});
//count cart


function quantityChanged(event) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1
    }
    updateCartTotal()
}
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
