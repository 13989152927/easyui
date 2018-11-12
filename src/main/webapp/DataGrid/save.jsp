<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<div style="text-align: center">
    <form id="saveForm" class="easyui-form" method="post">
        <div style="margin-top: 40px">
            姓名：<input type="text" name="name" class="easyui-textbox" data-options="prompt:'请输入用户名....',required:true,">
        </div>
        <div style="margin-top: 40px">
            年龄:<input type="text" name="age" class="easyui-texbox">
        </div>
        <%--<div style="margin-top: 40px">
            性别：
            <select name="" name="sex" id="" class="easyui-combobox" data-options="width:100">
                <option value="M">男</option>
                <option value="F">女</option>
            </select>
        </div>
        <div style="margin-top: 40px">
            密码：<input name="password" type="text" class="easyui-passwordbox" data-option="">
        </div>--%>
        <div style="margin-top: 40px">
            生日：<input type="text" name="bir" class="easyui-datebox">
        </div>
       
    </form>
</div>