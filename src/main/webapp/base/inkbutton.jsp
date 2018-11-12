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
    $(function(){
        $("#btn").linkbutton({
            width:100,
            height:30,
            iconCls:'icon-add',
        });
        //绑定btun1按钮
        $("#btn1").click(function () {
            $("#btn0").linkbutton('select');//select 方法 选择按钮
            $("#btn").linkbutton('disable');//disable 方法 禁用按钮
            setTimeout(function () {    //setTimeout  定时器  3秒钟后启动
                $("#btn").linkbutton('enable'); //enable 方法 启动按钮
            },3000);
        });
    });
</script>
</head>
<body>
<%--html方式--%>
<a href="" id="btn0" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-add'">html添加</a>
<%--js创建--%>
<a href="" id="btn">js添加</a>

<%--
    所用控件方法无论使用哪种控件方法都是一致的：对应控件选择器.控制器名（方法名：参数）
    方法：用来改变控制器的初始状态
--%>
<br>
<input type="button" id="btn1" value="测试方法"/>
</body>
</html>