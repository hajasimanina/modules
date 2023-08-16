jQuery(document).ready(function ($) {
    let _uploader = $('.wcm-ip-uploader-inline');
    let _close = $('.wcm-ip-uploader-inline button.close');
    let _add = $('.wcm-import-add-file');
    /*Manage click add file*/
    _add.on('click', function (e) {
        e.preventDefault();
        $(this).addClass('active');
        _uploader.removeClass('hidden')
    });

    /*Manage close button*/
    _close.on('click', function (e) {
        e.preventDefault();
        _add.removeClass('active');
        _uploader.addClass('hidden')
    });

})