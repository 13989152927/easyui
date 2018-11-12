<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>

<script>
$(function () {
    $("#mb").menubutton({
        menu:'#btn',
        plain:false,
        onClick:function(){
            alert();
        }
    });
    $("#btn").menubutton('select');
});
</script>
</head>
<body>
<a href="" id="mb">点击我下拉菜单</a>
<div id="btn">
    <div>复制</div>
    <div>删除</div>
</div>
</body>
</html>