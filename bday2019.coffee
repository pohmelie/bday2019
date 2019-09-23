main = () ->
    body = $("body")
    pic = $("#pic")
    secret = $(".true")

    turn_on = () ->
        body.css("background-color", "white")
        pic.attr("src", "on.png")
        pic.off("click")
        pic.on("click", turn_off)
        secret.css("color", "black")
        secret.css("text-shadow", "")
        $("a").show()

    turn_off = () ->
        body.css("background-color", "black")
        pic.attr("src", "off.png")
        pic.off("click")
        pic.on("click", turn_on)
        secret.css("color", "white")
        secret.css("text-shadow", "0 0 5px #fff,
                                   0 0 10px #fff,
                                   0 0 20px #ff0080,
                                   0 0 30px #ff0080,
                                   0 0 40px #ff0080,
                                   0 0 55px #ff0080,
                                   0 0 75px #ff0080")
        $("#link").hide()

    turn_off()


$(main)
