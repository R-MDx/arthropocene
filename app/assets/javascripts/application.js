//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function(){
  $(window).on("scroll", function(){
    if ($(this).scrollTop() > 60) {
      $(".navbar-arthropocene").css("top", "-80px");
    } else {
      $(".navbar-arthropocene").css("top", "0px");
    }
  });

  var filters = ["perpetua", "reyes", "xpro2"];
  var randFilter = filters[Math.floor(Math.random() * filters.length)];
  $(".post-frame-banner").on("mouseenter", function(){
    $(this).addClass(randFilter);
    $(this).addClass("hovered");
  });
  $(".post-frame-banner").on("mouseleave", function(){
    $(this).removeClass(randFilter);
    $(this).removeClass("hovered");
  });
});
