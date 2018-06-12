$('.tel').mask('+375(00)000-00-00');

$('.price').mask('000000000000.00', {reverse: true});

$('.count').mask('0000000000');

$('.postcode').mask('000000');

$(document).on('click', '[data-toggle="lightbox"]', function (event) {
    event.preventDefault();
    $(this).ekkoLightbox();
});

$('.carousel').carousel({
    interval: 3000
});

$(document).ready(
    updateCartSize()
);

$('.add-to-cart').click(
    function () {
        $.ajax({
            method: 'GET',
            dataType: 'json',
            url: $(this).attr('href'),
            success: function (result) {
                if (result === false) {
                    $('#errorModal').modal('show');
                }
                updateCartSize();
                updateCartSum();
            }
        });
    }
);

$('.supply-product-count').blur(function () {
    $.ajax({
        method: 'GET',
        dataType: 'json',
        url: "/updateCartSaleProductCount.html?id=" + $(this).attr('data-supply-id') + "&count=" + $(this).val(),
        success: function (result) {
            if (result === -1) {
                $(this).val(0);
                $('#errorModal').modal('show');
            }
            updateCartSize();
            updateCartSum();
        }
    });
});

function updateCartSize() {
    $.ajax({
        method: 'GET',
        dataType: 'json',
        url: "/cartSize.html",
        success: function (result) {
            $('#shopping-cart-badge').html(result);
        }
    });
}

function updateCartSum() {
    $.ajax({
        method: 'GET',
        dataType: 'json',
        url: "/cartSum.html",
        success: function (result) {
            var buy = $('#buy');
            buy.html(result.toFixed(2) + buy.html().substr(buy.html().indexOf('&nbsp;')));
        }
    });
}

$('#buy').click(
    function () {
        $.ajax({
            url: "/buy.html",
            type: "POST",
            data: $("#buyForm").serialize(),
            success: function (response) {
                if (response === "true") {
                    $('#messageModalLabel').html("Заказ оформлен!");
                    $('#messageModalContent').html("Заказ оформлен, в течении дня с вами свяжется продавец.");
                } else {
                    $('#messageModalLabel').html("Произошла ошибка!");
                    $('#messageModalContent').html("Пустая корзина, либо не указан адрес доставки!");
                }
                $('#messageModal').modal('show');
            }
        });
    }
);

$('#messageModal').on('hidden.bs.modal', function () {
    window.location.href = "/";
});
