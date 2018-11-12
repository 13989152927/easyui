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
        $(function(){



        });
        function test(aa){
            console.log(aa);
        }
        function test1(){
            console.log("---------------")
        }
    </script>
</head>
<body>
<input type="text" class="easyui-validatebox" data-options="onBeforeValidate:test1,onValidate:test,invalidMessage:'省份证好：：：',missingMessage:'必填',delay:2000">

<input type="text" class="easyui-validatebox" data-options="onBeforeValidate:test1,onValidate:test,validateOnBlur:true,editable:true,novalidate:false,deltaX:-100,tipPosition:'left',invalidMessage:'身份证号填的不满意!!!',missingMessage:'必填',required:true,validType:'email',delay:2000">


</body>
</html>