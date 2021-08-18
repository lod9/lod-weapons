lod = {}

$(function() {
    function display(bool) {
        if (bool) {
            $("body").show();
        } else {
            $("body").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })


})


$(document).on('keydown', function() {
    switch (event.keyCode) {
        case 27:
            lod.Close();
            break;
    }
});

lod.Close = function() {
    $("body").fadeOut(175);
    $.post('http://lod-weapons/close');
}

$("#al").click(function() {
    $.post('http://lod-weapons/pistol', JSON.stringify({}));
    3

});
$("#al1").click(function() {
    $.post('http://lod-weapons/smg', JSON.stringify({}));
    4

});
$("#al2").click(function() {
    $.post('http://lod-weapons/m4', JSON.stringify({}));
    5

});