// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function showPopupOnHover(){
  $($(".popup_activator")).mouseenter(function() {$(this).parent().children(".popup").show()})
  $($(".popup_activator")).mouseleave(function() {$(this).parent().children(".popup").hide()})
}

$(document).ready(function(){
  showPopupOnHover()


})
