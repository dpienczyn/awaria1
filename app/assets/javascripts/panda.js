document.addEventListener("turbolinks:load", function() {
  $('#control').change(function () {
    switch ($(this)[0].value) {
      case false:
        // hide range input
        $('#data').closest('.form-group').addClass('hidden');
        alert("good")
        break;

      case true:
        // show range input
        $('#data').closest('.form-group').removeClass('hidden');
        alert("bad")
        break;
    }
  });
});
