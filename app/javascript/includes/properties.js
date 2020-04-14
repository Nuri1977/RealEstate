$(function(){
  $("#toggleDetails").on("click", function(){
    var details = $("#prop-details");
    details.toggleClass("open");
    if(details.hasClass("open")){
      $(this).text("Show less");
    } else {
      $(this).text("Show more");
    }
  });
});