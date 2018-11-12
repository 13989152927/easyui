<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <!-- 引用的css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/form.validator.rules.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
    <title>系统首页</title>
</head>
<
<style>
    a{
        text-decoration:none;
    }
    body{
        margin:0px;
    }
    #header{
        width:100%;
        height:30px;
        background-color:#E0EFFF;
        padding-top: 5px;
        padding-bottom: 10px;
    }
    #header .logo{
        margin-left: 50px;
        font-size: 24px;
        font-family: 微软雅黑;
    }
    #picture{
        width:100%;
        height:750px;
    }
   
    p{
        line-height:20px;
    }
</style>
<script type="text/javascript">
    console.info("==================")
    $('#p').panel('move',{
        left:100,
        top:100
    });
</script>
<body>
<div id="header" >
    <div class="logo" onclick="window.location.href='index.html'">
        <strong信息系统</strong>
    </div>
</div>
<div id="picture" style="background:url(images/index.jpg) no-repeat; background-size: cover;">
    <div data-options=" region:'east',split:true,style:{position:'absolute',right:50,top:150}"
         class="easyui-panel " title="用户登录" style="width:300px;text-align: center;">
        <div style="padding:10px 60px 20px 60px">
            <form id="ff" class="easyui-form" method="post" data-options="novalidate:true">
                <table cellpadding="5">
                    <tr>
                        <td><input class="easyui-textbox" data-options="prompt:'账号',validType:'name'" iconCls="icon-man" iconAlign=left style="width:100%;height:32px"/></td>
                    </tr>
                    <tr>
                        <td><input class="easyui-textbox" data-options="prompt:'密码',validType:'password'" iconCls="icon-lock" iconAlign=left style="width:100%;height:32px"></input></td>
                    </tr>
                    <tr>
                        <td><input class="easyui-textbox" data-options="prompt:'验证码',validType:'validate'" iconCls="icon-filter" iconAlign=left style="width:55%;height:32px" />
                            <img src="" alt="" width="56" height="32" align='absMiddle' /> </td>
                    </tr>
                </table>
            </form>
            <div style="text-align:center;padding:5px; ">
                <a href="#" rel="external nofollow" rel="external nofollow" class="easyui-linkbutton" style="width:45%;height:32px">登录</a>
                <a href="#" rel="external nofollow" rel="external nofollow" class="easyui-linkbutton" style="width:45%;height:32px">注册</a>
            </div>
        </div>
    </div>
</div>

</body>
<script>
    function submitForm(){
        $('#ff').form('submit',{
            onSubmit:function(){
                return $(this).form('enableValidation').form('validate');
            }
        });
    }
    function clearForm(){
        $('#ff').form('clear');
    }
</script>
</html>

 
