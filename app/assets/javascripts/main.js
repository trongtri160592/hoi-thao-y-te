$(".card").hover(function () {
    $(this).toggleClass("card-inverse");
});

(function($) {
    $(function() { //on DOM ready
        $("#scroller").simplyScroll();
    });
})(jQuery);