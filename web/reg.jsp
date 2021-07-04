<%--
  Created by IntelliJ IDEA.
  User: LJY
  Date: 2021/5/18
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <script type="text/javascript" src="logincss/js/jquery.min.js"></script>
    <link rel="stylesheet" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
</head>
<body>
<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">昵&nbsp;&nbsp;&nbsp;&nbsp;称</label>
        <div class="layui-input-inline">
            <input type="text" name="username" required="required" autocomplete="off" placeholder="请输入昵称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">账&nbsp;&nbsp;&nbsp;&nbsp;号</label>
        <div class="layui-input-inline">
            <input type="text" name="number" lay-verify="title" autocomplete="off" placeholder="请输入不小于8位数账号" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
        <div class="layui-input-inline">
            <input type="password" name="password" lay-verify="required" lay-reqtext="密码是必填项，岂能为空？" placeholder="请输入密码" autocomplete="off" class="layui-input" >
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机号</label>
        <div class="layui-input-inline">
            <input type="tel" name="phone" lay-verify="required|telphone" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">验证码</label>
        <div class="layui-input-inline">
            <input type="tel" name="checkcode" lay-verify="required" autocomplete="off" class="layui-input">
        </div>
        <a style="display: inline-block;width: 164px;height: 43px;border: 1px #f00 solid"onclick="getcode()"href="javascript:void(0);"><img src="${pageContext.request.contextPath}/codeServlet" alt="验证码" height="43" width="164" id="code"></a>
    </div>
    <br>
    <br>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

</body>


<script>
    layui.use(['form','jquery','layer'], function(){
        var phone = /^1[3|4|5|7|8]\d{9}$/;
        var form = layui.form;
        var layer = layui.layer;
        var $ = layui.jquery;
        form.verify({
            telphone: function(value){
                var flag = phone.test(value);
                if(!flag){
                    return '请输入正确手机号';
                }
            }
            ,title: function(value){
                if(value.length < 8){
                    return '账号需要八位';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            var json = {"json":JSON.stringify(data.field)};
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            // ajax
            $.post("${pageContext.request.contextPath}/RegisterServlet",json,function (data){
                // alert(data);
                if (data=="1") {
                    layer.msg("恭喜注册成功",{icon: 1});
                    layer.close(this);
                }else {
                    layer.msg(data,{icon: 5});
                }

            });
            <%--$.ajax({--%>
            <%--    url: "${pageContext.request.contextPath}/RegisterServlet",--%>
            <%--    async: false,//这一步是非常重要的，作用是设置为同步执行--%>
            <%--    type: "POST",--%>
            <%--    data: json,--%>
            <%--    dataType: "json",--%>
            <%--    success: function (data) {--%>
            <%--        if (data="1") {--%>
            <%--            layer.msg("恭喜注册成功",{icon: 1});--%>
            <%--            layer.close(this);--%>
            <%--        }else {--%>
            <%--            layer.msg(data,{icon: 5});--%>
            <%--        }--%>
            <%--    }--%>
            <%--});--%>

            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function(){
            form.val('example', {
                "username": "贤心" // "name": "value"
                ,"password": "123456"
                ,"interest": 1
                ,"like[write]": true //复选框选中状态
                ,"close": true //开关状态
                ,"sex": "女"
                ,"desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function(){
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });
</script>
<!--刷新验证码-->
<script>
    function getcode(){
        $("#code").attr("src","${pageContext.request.contextPath}/codeServlet?time="+new Date().getTime());
    }
</script>
</html>
