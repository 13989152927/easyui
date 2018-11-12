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
    //消息提示控制
    $.messager.show({
        title:'我的消息',
        msg:'消息将在5秒后关闭。',
        timeout:5000,
        showType:'slide'
    });
    // 消息将显示在顶部中间
    $.messager.show({
        title:'我的消息',
        msg:'消息将在4秒后关闭。',
        showType:'show',
        style:{
            right:'',
            top:document.body.scrollTop+document.documentElement.scrollTop,
            bottom:''
        }
    });

})
</script>
</head>
<body>


</body>
</html>