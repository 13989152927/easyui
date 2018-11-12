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
      //获取鼠标右击事件
      $(document).contextmenu(function (e) {
         // console.log(e.pageX);
         // console.log(e.pageY);
          $("#mm").menu('show',{
             left:e.pageX,
              top:e.pageY,
          });
          return false;//将浏览器右击事件的刷新关掉  阻止事件传递
      })
  });
</script>
</head>
<body>
<div id="mm" class="easyui-menu" data-options="hideOnUnhover:false">
    <div>添加</div>
    <div>修改</div>
    <div>剪切</div>
    <div class="menu-sep"></div>
    <div>更多
        <div>
            <div data-options="iconCls:'icon-add'">编辑</div>
            <div>编码</div>
        </div>
    </div>
</div>
</body>
</html>