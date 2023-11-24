var dou1 = true;
document.querySelector("#btn_des div").addEventListener("click", () => {
    if (dou1 == true) {
        dou1 = false
        document.querySelector("#mobile_menu").style.backgroundColor = "#fafafa";
        document.querySelector("#mobile_menu").style.zIndex = 3;
        document.querySelector("#btn_des div").style.pointerEvents = "none";
        var a = setInterval(ai, 4)
        function ai() {
            var dou = parseInt(document.getElementById("mobile_menu").style.marginTop.split("px"))
            document.getElementById("mobile_menu").style.marginTop = dou + 5 + "px";
            if (parseInt(document.getElementById("mobile_menu").style.marginTop.split("px")) == 0) {
                document.querySelector("#btn_des div").style.pointerEvents = "auto";
                clearInterval(a)
            }
        }
    }
    else {
        dou1 = true
        document.querySelector("#mobile_menu").style.backgroundColor = "transparent";
        document.querySelector("#mobile_menu").style.zIndex = -1
        document.querySelector("#btn_des div").style.pointerEvents = "none";
        var a = setInterval(ai, 4)
        function ai() {
            var dou = parseInt(document.getElementById("mobile_menu").style.marginTop.split("px"))
            document.getElementById("mobile_menu").style.marginTop = dou - 5 + "px";
            if (parseInt(document.getElementById("mobile_menu").style.marginTop.split("px")) == -255) {
                document.querySelector("#btn_des div").style.pointerEvents = "auto";
                clearInterval(a)
            }
        }
    }
})