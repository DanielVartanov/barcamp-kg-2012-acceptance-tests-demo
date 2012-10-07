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
        $("#window_background").fadeIn(4000);
        $("#window").fadeIn(4000);
    });
}

function close_window() {
    $("#window").fadeOut("slow");
    $("#window_background").fadeOut("slow");
    $("#window").remove();
    $("#window_background").remove();
}