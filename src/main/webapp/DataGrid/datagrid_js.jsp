<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/black/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/form.validator.rules.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
            $("#dg").datagrid({
                url:'${pageContext.request.contextPath}/Emp/save',
                pageNumber:1,//当前页
                pageSize:2,//每页显示记录数
                pageList:[2,4,10,15,30,500],
                fitColumns:true,
                remoteSort:false,//关闭服务器端排序,
                striped:true,
                pagination:true,
                sortOrder:'asc',
                toolbar:'#tb',
                loadMsg:'正在加载,请等待.....',
                multiSort:true,
                singleSelect:false,
                ctrlSelect:true,
                rownumbers:true,
                height:400,
                columns:[[
                    {field:'cks',title:'cks',checkbox:true},
                    {field:'id',title:'Id',width:200},
                    {field:'name',title:'name',width:200},
                    {field:'age',title:'Age',width:200,sortable:true,order:'asc',
                        formatter:function (value,row,index) {
                            console.log(index);
                            if(value>=30){
                                return  "<font color='yellow'>"+value+"</font>";
                            }
                            return "<font color='red'>"+value+"</font>";
                        }
                    },
                    {field:'bir',title:'brithday',width:200,align:'center',halign:'left'},
                    {field:'options',title:'options',width:200,
                        formatter:function(value,row,index){
                            console.log(row.id);
                            return  "<a href='javascript:;' onclick=\"delRow('"+row.id+"')\" class='td' data-options=\"iconCls:'icon-remove'\">删除 </a>" +
                                "<a href='javascript:;' class='td' onclick=\"updateRow('"+row.id+"')\" data-options=\"iconCls:'icon-edit'\">更改</a>";
                        }
                    }
                ]],
                onLoadSuccess:function () {
                    $(".td").linkbutton();
                }
            });
           
        });
        //打开更新用的对话框
        function updateRow(id){
            $("#updataEiat").dialog({
                href:'${pageContext.request.contextPath}/DataGrid/edit.jsp?id='+id,
                buttons:[{
                    iconCls:'icon-save',
                    text:'修改',
                    handler:function () {
                      $("#updateForm").form('submit',{
                          url:'${pageContext.request.contextPath}/Emp/update',
                          success:function (result) {//注意一定是json字符串  使用需要转为js对象
                              var parseJSON = $.parseJSON(result);
                              if(parseJSON.success){
                                  //提示修改信息
                                  $.messager.show({title:'提示',msg:"用户信息修改成功!!!"});
                              }else{
                                  $.messager.show({title:'提示',msg:parseJSON.message});
                              }
                              //关闭dialog
                              $("#updataEiat").dialog('close');
                              //刷新datagrid
                              $("#dg").datagrid('reload');//刷新当前datagrid
                          },
                      })
                    }
                }, {
                    iconCls: 'icon-cancel',
                    text: "取消",
                    handler: function () {
                        $("#updataEiat").dialog('close');
                    }
                }]
            });
        }
       
     //删除一行数据的事件
       function delRow(id) {
            //获取当前点击id发送的ajax请求删除id这个人的信息
           $.get("${pageContext.request.contextPath}/Emp/delectId?id="+id,function(result){//响应成功之后的回调
              
               //get,post格式不用转换成json格式 自动就是json格式  接受回调的参数判断是否删除成功
               if(result.success){
                   $.messager.show({title:'提示',msg:'用户删除成功'});
               }else{
                   $.messager.show({title:'提示',msg:parseJSON.message});
               }
               //刷新datagrid表格
               $("#dg").datagrid('reload');//刷新当前的datagrid表单
           });
           
       }
       //批量删除多行
        function delectAll() {
           
           var rows = $("#dg").datagrid('getSelections');
           if(rows.length<=0){
               $.messager.show({title:'提示',text:'至少选中一行！！！！'});
           }else{
               var ids = [];
               for(var i=0;i<rows.length;i++){
                   console.log(rows[i].id);
                   ids.push(rows[i].id)
               }
               console.log(ids);
               //发送ajax请求传递数组  注意: $.get $.post 只能传递简单数据(key=value) 不能数组类型的数据
               //   如果想要传递数组类型的数据只能使用  $.ajax 并且还要设置其中的一个属性
              $.ajax({
                   url:"${pageContext.request.contextPath}/Emp/delectAll",
                  type:"POST",
                  traditional:true,//传递数据类型的数据时必须设置这个属性为true
                  data:{id:ids},
                  success:function(result){
                      //消息提示
                      $.messager.show({title:'提示',msg:"删除成功!!!"});
                      //刷新datagrid
                      $("#dg").datagrid('reload');
                  },
                  error:function(){
                      //消息提示
                      $.messager.show({title:'提示',msg:"删除失败!!!"});
                      //刷新datagrid
                      $("#dg").datagrid('reload');
                  }
               });
           }
        }
        function addDialog() { //添加窗口触发的事件
            $("#add").dialog({
                buttons:[{
                    text:'保存',
                    iconCls:'icon-save',
                    handler:function(){
                        //插入用户信息
                        $("#saveForm").form('submit',{
                            url:'${pageContext.request.contextPath}/Emp/add',
                            success:function (result) {//响应一定是jspn格式的字符串 使用前要先转换成json格式
                                var parseJSON = $.parseJSON(result);
                                if(parseJSON.success){
                                    //提示消息
                                    $.messager.show({title:'提示',msg:'用户添加成功'});
                                }else{
                                    $.messager.show({title:'提示',msg:parseJSON.message});
                                }
                               
                                //关闭对话框
                                $("#add").dialog('close');
                                //刷新datagrid页面
                                $("#dg").datagrid('reload');
                            }
                        });
                    }
                },{
                    text:'关闭',
                    iconCls:'icon-cancel',
                    handler:function(){
                        $("#add").dialog('close');
                    }
                }]
            });
        }
    </script>
</head>
<body>
<table id="dg"></table>

<div id="tb">
    <a href="#" onclick="addDialog()" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
    <a href="#" onclick="delectAll()" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">批量删除</a>
</div>
<%--添加按钮  触发的对话框--%>
<div id="add"  data-options="href:'${pageContext.request.contextPath}/DataGrid/save.jsp',width:500,height:400,title:'添加信息',draggable:false,iconCls:'icon-save'">
</div>


<%--更新用户用的对话框--%>
<div id="updataEiat" data-options="draggable:false,width:500,height:400,title:'用户更新信息'"></div>
</body>
</html>