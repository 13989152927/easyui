<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/form.validator.rules.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
   
</head>
<body>
<%--分类容器 属性--%>
<div class="easyui-accordion" data-options="width:300,height:500,">
    <%--分类面板属性--%>
   <div data-options="title:'学生管理',iconCls:'icon-man'">
       学生管理系统
   </div>
    
    <div data-options="title:'教师管理',iconCls:'icon-save">
       <font size="4">教师管理系统</font> 
    </div>
   
   

</div>
</body>
</html>