<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
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
<table class="easyui-datagrid" data-options="fitColumns:true,url:'${pageContext.request.contextPath}/DataGrid/findAll.json'">
    <thead>
        <tr>
            <th data-options="field:'id',width:200">Id</th>
            <th data-options="field:'name',width:200">Name</th>
            <th data-options="field:'age',width:200">Age</th>
        </tr>
    </thead>
    
    <%--<tbody>
        <tr>
            <td>001</td><td>zhangsan</td><td>121211</td>
        </tr>
    </tbody>--%>
</table>
</body>
</html>