document.addEventListener("turbolinks:load", function() {
  var zmienna = $( "#dzialselect, option:selected" ).val();
  $( "#match" ).val( zmienna );
});
