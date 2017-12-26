
$(document).ready(function(){
    $("#but").click(function(){

        $("#noble").toggle('slow');
    });
});

$(document).ready(function(){
    $("#but").click(function(){

        $("#hiddendiv").toggle('slow');
    });
});

$('.down').click(function(e){
   e.preventDefault();
   scrollToElement( $(this).attr('href'), 2000 );
});

var scrollToElement = function(el, ms){
    var speed = (ms) ? ms : 600;
    $('html,body').animate({
        scrollTop: $(el).offset().top
    }, speed);
}

$(".nav li a").on("click", function(){
   $(".nav").find(".active").removeClass("active");
   $(this).parent().addClass("active");
});


$(function(){
    $('[placeholder]').focus(function(){
           $(this).attr('data',$(this).attr('placeholder'));
           $(this).attr('placeholder','');
    }).blur(function(){
        $(this).attr('placeholder',$(this).attr('data'));
    });
});
