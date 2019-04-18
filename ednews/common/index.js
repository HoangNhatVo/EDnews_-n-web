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



	/*======================================
    =            INIT FUNCTIONS            =
    ======================================*/

	$(document).ready(function() {
        
        Magazine.BackToTop();
    });

    /*=====  End of INIT FUNCTIONS  ======*/

    $(window).on('load', function() {
    });

});