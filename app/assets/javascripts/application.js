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
//= require bootstrap.growl

/*SPIN*/
$(document).ready(function() {
  // Global ajax cursor change
  $(document)
    .ajaxStart(function () {
        $('#global-spin').fadeIn('slow');
        //alert("ajaxStart");
    })
    .ajaxStop(function () {
        $('#global-spin').fadeOut('slow');
        //alert("ajaxStop");
    });

  $(document).on('ajax:beforeSend', function() {
    $('#global-spin').fadeIn('slow');
    console.log("beforeSend");
  });

  $(document).on('ajax:send', function(xhr) {
    $('#global-spin').fadeOut('slow');
    console.log("ajax:send");
  });

});
