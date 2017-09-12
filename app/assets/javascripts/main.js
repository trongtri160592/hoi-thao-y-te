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
});
$(window).unload(function () { $(window).unbind('unload'); });