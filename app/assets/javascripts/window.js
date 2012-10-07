function open_window(remote_path) {
    $("#content").after("<div id='window_background'></div>")
    $("#window_background").css({
        "opacity": "0.65"
    });
    $("#content").after("<div id='window'></div>")

    $("#window").load(remote_path, function() {
        var windowWidth = window.innerWidth;
        var popupWidth = $("#window").width();
        var newLeft = windowWidth/2-popupWidth/2;
        if (newLeft < 32) {
            newLeft = 32;
        }
        $("#window").css({
            "position": "absolute",
            "left": newLeft
        });
        $("#window_background").fadeIn("slow");
        $("#window").fadeIn("slow");
    });
}

function close_window() {
    $("#window").fadeOut("slow");
    $("#window_background").fadeOut("slow");
    $("#window").remove();
    $("#window_background").remove();
}

function open_dialog(remote_path, object) {
    $("#content").after("<div id='window_background'></div>")
    $("#window_background").css({
        "opacity": "0.65"
    });
    $("#content").after("<div id='window' class='dialog'></div>")
    
    $("#window").load(remote_path, object, function() {
        var windowWidth = document.documentElement.clientWidth;
        var windowHeight = document.documentElement.clientHeight;
        var popupHeight = $("#window").height();
        var popupWidth = $("#window").width();

        var newTop = windowHeight/2-popupHeight/2;
        var newLeft = windowWidth/2-popupWidth/2;

        if (newTop < 32) {
            newTop = 32;
        }
        if (newLeft < 32) {
            newLeft = 32;
        }

        $("#window").css({
            "position": "absolute",
            "top": newTop,
            "left": newLeft
        });

        $("#window_background").fadeIn("slow");
        $("#window").fadeIn("slow");
    });

}
