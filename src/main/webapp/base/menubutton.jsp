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

</script>
</head>
<body>
<div>
    <%--使用linkbutton中的所有属性 方法 事件--%>
    <a href="" id="#btn" class="easyui-menubutton" data-options="menu:'#mm',iconCls:'icon-add',width:200,plain:false">菜单按钮</a>
</div>
<%--使用菜单属性 方法--%>
<div id="mm" data-options="width:200">
    <div>删除</div>
    <div>修改</div>
    <div>添加</div>
</div>
</body>
</html>