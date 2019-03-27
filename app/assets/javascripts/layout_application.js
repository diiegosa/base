$(document).ready(function(){
    $('.sidenav').sidenav();
    $('#sidebar-1').sidenav({ edge: 'left' });
    $('#sidebar-2').sidenav({ edge: 'right' });
      
    if ($(window).width() >= 1925) {
        $('#sidebar-2').addClass("sidenav-fixed");
        $('#burger-icon-2').addClass("hide");
    }
    else {
        $('#sidebar-2').removeClass("sidenav-fixed");
        $('#burger-icon-2').removeClass("hide");
    }
});
// ON RESIZE
$(window).resize(function() {
    if ($(window).width() >= 1925) {
        $('#sidebar-2').addClass("sidenav-fixed");
        $('#burger-icon-2').addClass("hide");
    }
    else {
        $('#sidebar-2').removeClass("sidenav-fixed");
        $('#burger-icon-2').removeClass("hide");
    }
});
