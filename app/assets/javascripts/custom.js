$(document).on('keyup', '.search_form input', function() {
	$('.search_form').delay(200).submit();
});

$(document).on('keyup', '.search_form_z input', function() {
	$('.search_form_z').delay(200).submit();
});

$(document).on('keyup', '.search_form_u input', function() {
	$('.search_form_u').delay(200).submit();
});

$(document).on('turbolinks:load', function() {
$('#acrylic').stacktable();
});