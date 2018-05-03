$(function () {
    $page = jQuery.url.attr("file");
    if (!$page) {
        $page = '/Default.aspx';
    }
    $('#navigation li a').each(function () {
        var $href = $(this).attr('href');
        if (($href == $page) || ($href == '')) {
            $(this).addClass('on');
        } else {
            $(this).removeClass('on');
        }
    });
});