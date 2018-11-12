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
   $(function () {
       $("#mm").menu('show',{left:200,top:200});//对象存在属性  show方法显示菜单到指定的位置 
   });
   function show(){
       alert('show');
   }
   function test1(item) {
       //item 当前点击的菜单项对象 id text iconCls href onclik
      
       console.log(item.iconCls);
       console.log(item.text);
       if(item.text=="复制"){
           location.href="aa";
       }
       if(item.text=="粘贴"){
           location.href="bn";
       }
   }
</script>
</head>
<body>
<%--创建菜单--%>
<div id="mm" class="easyui-menu" data-options="onClick:test1,onShow:show,minWidth:126,itemHeight:30,hideOnUnhover:false">
    <div data-options="iconCls:'icon-cut'">剪切</div>
    <div>复制</div>
    <div>粘贴</div>
    <div class="menu-sep"></div>
    <div>编码
        <div>
            <div>UTF-8</div>
            <div>台湾码</div>
            
        </div>
    </div>
</div>
</body>
</html>