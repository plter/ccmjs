# ccmjs
Custom context menu library
自定义页面中的上下文菜单

##js示例代码如下
```javascript
(function () {

    var _div1 = document.getElementById("div1");
    _div1.useCustomContextMenu = true;
    var menu = new plter.CustomContextMenu();
    menu.addItem(new plter.CustomContextMenuItem("弹出信息", function () {
        alert("JavaScript是世界上最强大的编程语言,没有之一");
    }));
    _div1.customContextMenu = menu;

    var _div2 = document.getElementById("div2");
    _div2.useCustomContextMenu = true;
    menu = new plter.CustomContextMenu();
    menu.addItem(new plter.CustomContextMenuItem("打开我的主页", function () {
        window.location.href = "http://plter.com"
    }));
    menu.addItem(new plter.CustomContextMenuItem("打开github", function () {
        window.location.href = "http://github.com"
    }));
    _div2.customContextMenu = menu;

    $(".ccmjs ul").addClass("list-group");
    $(".ccmjs li").addClass("list-group-item");
})();
```

##html示例代码如下
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="style.css" rel="stylesheet">

    <link rel="stylesheet" href="../lib/bootstrap-3.3.6-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../lib/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">

    <script src="../lib/jquery/jquery.min.js"></script>
    <script src="../lib/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>

    <script src="../dist/ccm.min.js"></script>
</head>
<body>
<div id="div1"></div>
<div id="div2"></div>

<script src="Main.js"></script>
</body>
</html>
```
##css示例代码如下
```css

#div1 {
    width: 200px;
    height: 200px;
    background-color: blue;
}

#div2 {
    width: 200px;
    height: 200px;
    background-color: red;
}

.ccmjs a:hover {
    text-decoration: none;
}
```