$(document).ready(function(){
    $('present').mouseenter(function(){
        $(this).fadeTo('fast',1);
    });
    $('present').mouseleave(function(){
        $(this).fadeTo('fast',0.5);
    });
});
