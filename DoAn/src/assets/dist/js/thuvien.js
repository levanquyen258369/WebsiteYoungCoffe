document.getElementById("showcart").style.display = "none";

(function(){

  $("#cart").on("click", function() {
    $(".shopping-cart").fadeToggle( "fast");
  });

})();
