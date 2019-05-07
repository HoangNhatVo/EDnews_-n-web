jQuery(function($) {
var Magazine = {};

    /*=======================================
    =             MAIN FUNCTION             =
    =======================================*/
Magazine.BackToTop=function(){
	if ( $("html,body").scrollTop() < $(window).height() ) {
            $("#back-to-top").addClass("hidden")
        } else {
            $("#back-to-top").removeClass("hidden")
        }

        $(window).scroll(function(){
            if ( $("html,body").scrollTop() < $(window).height() ) {
                $("#back-to-top").addClass("hidden")
            } else {
                $("#back-to-top").removeClass("hidden")
            }
        });


        $("#back-to-top").click(function(){
            $("html,body").animate({
                scrollTop: "0"
            }, 500);
        });
}
Magazine.Slick=function(){
    $('.nav-slick').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
             infinite: true,
            dots:false,
            accessibility: true,
            autoplay: true,
            autoplaySpeed: 1600,
        });
}


	/*======================================
    =            INIT FUNCTIONS            =
    ======================================*/

	$(document).ready(function() {
        
        Magazine.BackToTop();
        Magazine.Slick();
    });

    /*=====  End of INIT FUNCTIONS  ======*/

    $(window).on('load', function() {
    });

});