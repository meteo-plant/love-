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
//= require_tree .
<<<<<<< HEAD

$(function(){
   $(".modal-open").on('click',function(){
     $(".modal-overlay").fadeIn('slow');
     posCenter();
     $(window).on('resize',function(){
       posCenter();
     });
     function posCenter() {
       var w = $(window).width();
       var h = $(window).height();
       var ow = $(".modal-panel").outerWidth();
       var oh = $(".modal-panel").outerHeight();
       $(".modal-panel").css({
         'left':((w - ow) / 2) + 'px',
         'top':((h - oh) / 2) + 'px'
       });
     }
     $(".modal-close").on('click',function(){
       $(".modal-overlay").fadeOut('slow');
     });
   });
});
 

=======
//= require jquery.raty
>>>>>>> f7cb9414933935967f28e1b8962cfd872519d435
