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
    <script>
        $(function () {
           
        });
        function test(){
            alert("test");
        }
    </script>
</head>
<body>
<input type="text" class="easyui-textbox" data-options="iconCls:'icon-search',width:300,labelWidth:100,labelPosition:'before',
        multiline:true,label:'用户名：',prompt:'请输入用户名.....',icons:[
              {
                iconCls:'icon-add',
                handler:test,
              }
            ]">
<br><br><br>
<input type="text" class="easyui-textbox" data-options="">
</body>
</html>