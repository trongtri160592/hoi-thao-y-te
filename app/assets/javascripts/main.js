$(function() {
    $(".card").mouseover(function () {
        $(this).removeClass("card-inverse");
    });

    $(".card").mouseout(function () {
        $(this).addClass("card-inverse");
    });

    (function ($) {
        $(function () { //on DOM ready
            $("#scroller").simplyScroll();
        });
    })(jQuery);

    $('#sub-content-checkbox').change(function() {
        if($(this).is(':checked')) {
            $("#content-new-form").hide();
            $("#subcontent-new-form").show();
        } else {
            $("#content-new-form").show();
            $("#subcontent-new-form").hide();
        }
    });
});

$(window).unload(function () { $(window).unbind('unload'); });