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
            /*var student = {"name":"shangsan"};
            // 扩展对象  通过一个新的对象扩展一个原有的对象  扩展规则   原油对象没有则添加   有则修改
            $.extend(student,{"age":78,name:"lisi"});
            console.log(student);*/
            
            //扩展一个手机号码验证规则
            $.extend($.fn.validatebox.defaults.rules,{
                phone: {
                    validator:function (value,param) {
                        console.log(value);
                        console.log(param[0]);
                        return /^1(3|4|5|7|8)\d{9}$/.test(value);
                    },
                    message:"phone number is not 不合法!!!",
                 },
                confromPwd:{
                    validator:function (value,param) {
                        console.log(value);
                        console.log(param[0]);
                        return $(param[0]).val()==value;
                    },
                    message:"两次输入密码不一致!!!"
                }
            });
        });
    </script>
</head>
<body>
    
    <input type="text" class="easyui-validatebox" data-options="required:true,validType:'phone[12,13,14]'">
<br><br><br><br>
    密码：<input id="pwd" type="text" class="easyui-validatebox" data-options="required:true">
    确认密码：<input id="pwd" type="text" class="easyui-validatebox" data-options="required:true,validType:'confromPwd[\'#pwd\']'">
</body>
</html>