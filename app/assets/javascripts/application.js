//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function(){
  $(window).on("scroll", function(){
    if ($(this).scrollTop() > 100) {
      $(".navbar-arthropocene").css("top", "-80px");
    } else {
      $(".navbar-arthropocene").css("top", "0px");
    }

  });
})
