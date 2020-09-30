// Now we need to implement the KeysShortcut
function KeysShortcut(event) {

    var key_press = String.fromCharCode(event.keyCode);
    var key_code = event.keyCode;

    //Number Click
    if (key_press == 1) {
        document.getElementById("Button9").click();
    }
    if (key_press == 2) {
        document.getElementById("Button10").click();
    }
    if (key_press == 3 || key_code == 32) {
        document.getElementById("Button11").click();
    }
    if (key_press == 4) {
        document.getElementById("Button5").click();
    }
    if (key_press == 5) {
        document.getElementById("Button6").click();
    }
    if (key_press == 6 && event.shiftKey == false) {
        document.getElementById("Button7").click();
    }
    if (key_press == 7) {
        document.getElementById("Button1").click();
    }
    if (key_press == 8 && event.shiftKey == false) {
        document.getElementById("Button2").click();
    }
    if (key_press == 9) {
        document.getElementById("Button3").click();
    }
    if (key_press == 0) {
        document.getElementById("Button13").click();
    }

    //Enter Click
    if (key_code == 13) {
        document.getElementById("Button19").click();
    }

    //Operation Click
    if ((key_code == 187 && event.shiftKey) || (key_code == 107) || (key_code == 61 && event.shiftKey)) {
        document.getElementById("Button16").click();
    }
    if ((key_code == 189 && event.shiftKey == false) || (key_code == 107)) {
        document.getElementById("Button12").click();
    }
    if ((key_code == 56 && event.shiftKey) || (key_code == 106)) {
        document.getElementById("Button8").click();
    }
    if (key_code == 111 || (key_code == 191 && event.shiftKey == false)) {
        document.getElementById("Button4").click();
    }
    if ((key_code == 57 && event.shiftKey) || (key_code == 219)) {
        document.getElementById("Button14").click();
    }
    if ((key_code == 48 && event.shiftKey) || (key_code == 221)) {
        document.getElementById("Button15").click();
    }
}