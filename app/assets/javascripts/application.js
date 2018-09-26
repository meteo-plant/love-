// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap-sprockets
//= require select2
//= require turbolinks
//= require cocoon
//= require_tree .


$(function () {
    $('.js-searchable').select2({
        // コンテナ幅のカスタマイズをサポートします。
        width: '200px',
        // コントロールのプレースホルダを指定します。
        placeholder: 'Please Select',
        // クリア可能な選択をサポートします。
        allowClear: true
    });

    $('.add_fields').click(function() {
    	$('select').removeClass('js-searchable');
    })


    setInterval(function(){

    	$('.js-searchable').select2({
        // コンテナ幅のカスタマイズをサポートします。
	        width: '200px',
	        // コントロールのプレースホルダを指定します。
	        placeholder: 'Please Select',
	        // クリア可能な選択をサポートします。
	        allowClear: true
	    });
    	$('select').removeClass('js-searchable');
    });

    if (location.href == "http://localhost:3000/products?direction=asc&sort=id") {
        $('.form-control').html("<option>昇順</option><option>降順</option>");
    }

    $('select[class=form-control]').change(function() {
        if ($(this).val() == '降順') {
            window.location.href = "http://localhost:3000/products?direction=dec&sort=id";
        } else {
            window.location.href = "http://localhost:3000/products?direction=asc&sort=id";
        }
    });
});

