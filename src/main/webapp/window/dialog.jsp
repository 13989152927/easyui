<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/metro-gray/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/form.validator.rules.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
            $("#wd").dialog({
                width:500,
                height:400,
                resizable:true,
                title:'控制面板',
                toolbar:'#bb',
                buttons:'#tb',
                collapsible:true,
                minimizable:true,
                maximizable:true,
                resizable:true,
            });
        });
    </script>
</head>
<body>
<%--<div id="dd" class="easyui-dialog" data-options="buttons:'#bb',toolbar:'#tb',resizable:true,title:'用户添加',width:600,height:400">--%>
<div id="wd">
    <div style="text-align: center">
        <form action="" class="easyui-form" id="forms" method="post">
             <div style="margin-top: 30px;">用户名：<input type="text" class="easyui-textbox"></div>
            <div style="margin-top: 30px;">密  码：<input type="text" class="easyui-passwordbox"></div>
            <div style="margin-top:30px">
                验证码: <input class="easyui-textbox" type="text" id="logyzm" style="width:50%;height:30px;padding:12px"
                       data-options="prompt:'验证码'"> <a href="javascript:;" class="showcode" onclick="changeVeryfy()"><img
                    style=" margin:0 0 0 3px ; vertical-align:middle; height:26px;" src="http://www.baidu.com/img/baidu_jgylogo3.gif"></a>
            </div>
        </form>
    </div>
</div>

<%--定义按钮组--%>
<div id="tb">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">注册</a>
</div>

</body>
</html>