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
    // 函数
    function test(){
        alert('test');
    }
    $(function(){

        //使用js方式创建按钮
        $("#btn").linkbutton({
            width:200,
            height:30,
            iconCls:'icon-add',
            onClick:test,
        });
    });
</script>
</head>
<body>

<hr>
<a href="" id="btn">js方式创建的按钮</a>
<hr>



<a herf="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-save'" >点我</a>
<a herf="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-ok'">点我</a>
<a herf="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-add'">点我</a>
<a href="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-cancel'">点我</a>
<a href="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-reload'">点我</a>
<a href="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-filter'">点我</a>
<a href="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-edit'">点我</a>
<a href="" class="easyui-linkbutton" data-options="width:100,height:30,iconCls:'icon-cut'">点我</a>
<hr/>

<a href="javascript:void(0);" id="btn" class="easyui-linkbutton" data-options="size:'large',iconAlign:'right',plain:true,group:'A',toggle:true,disabled:false,width:120,height:30,iconCls:'icon-man'">按钮</a>
<a href="javascript:void(0);" id="btn" class="easyui-linkbutton" data-options="group:'A',toggle:true,disabled:false,width:120,height:30,iconCls:'icon-man'">按钮</a>

<hr>
<a href="#" class="easyui-linkbutton" data-options="onClick:test,width:100,height:30">测试事件</a>

</body>
</html>