<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/15
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Awesome Search Box</title>
    <link rel="stylesheet" href="CSS/style.css">
    <script src="https://kit.fontawesome.com/e138c56ca3.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="search-box">
    <label for="bottom-panel"></label><input id="bottom-panel" class="search-txt" type="text" name="" placeholder="Type to search">
    <a href="#" class="search-bth" onclick="searchByInfo()" id="search">
        <i class="fas fa-search"></i>
    </a>
</div>
</body>
<script>
    window.addEventListener("keydown", function (event) {
        if (event.defaultPrevented) {
            return; // Should do nothing if the default action has been cancelled
        }
        var handled = false;
        var code;
        //Get The Value Entered By The Keyboard
        if (event.key !== undefined) {
            // Handle the event with KeyboardEvent.key and set handled true.
            code = event.key;
        } else if (event.keyIdentifier !== undefined) {
            // Handle the event with KeyboardEvent.key and set handled true.
            code = event.keyIdentifier;
        } else if (event.keyCode !== undefined) {
            // Handle the event with KeyboardEvent.key and set handled true.
            code = event.keyCode;
        }
        if (code === "Enter") {
            document.getElementById("search").click();
            console.log(code);
            handled = true;
        }
        if (handled) {
            // Suppress "double action" if event handled
            event.preventDefault();
        }
    }, true);

    function searchByInfo() {
        var input_value = document.getElementById("bottom-panel").value;
        var a_label = document.getElementById("search");
        a_label.setAttribute('target', '_blank');
        a_label.setAttribute('href', 'http://www.baidu.com/s?ie=UTF-8&wd=' + input_value);
    }
</script>
</html>