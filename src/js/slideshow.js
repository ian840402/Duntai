import 'bxslider';

$(function() {
    $('.bxslider').bxSlider({
        mode: 'horizontal',
        captions: true,
        adaptiveHeight: true,
        pager: false,
    });
    $(window).resize(() => {
        $('.bxslider').bxSlider('reloadSlider');
    });
});

// export default test();