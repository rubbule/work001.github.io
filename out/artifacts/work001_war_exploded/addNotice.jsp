<%--
  Created by IntelliJ IDEA.
  User: qbtx
  Date: 2021/5/20
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="layui/css/layui.css">

    <!-- 引入 layui.js -->
    <script src="layui/layui.js"></script>
    <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" src="layui/jquery.min.js"></script>
</head>

<form class="layui-form layui-form-pane" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-inline">
            <input type="text" name="name" lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">主旨</label>
        <div class="layui-input-inline">
            <input type="text" name="title" lay-verify="required" placeholder="请输入主旨" autocomplete="off" class="layui-input">
        </div>
    </div>
<textarea id="container" name="content" style="width: 99%;margin-top: 10px;height: 370px"></textarea>
    <div class="layui-form-item" style="margin-top: 20px">
        <button class="layui-btn" lay-submit="" lay-filter="demo1">跳转式提交</button>
    </div>
</form>
</body>
<script>
    var ue=UE.getEditor("container");

    layui.use(['form','jquery'], function(){
        var form = layui.form
            ,$=layui.jquery
            ,layer = layui.layer;







        //监听提交
        form.on('submit(demo1)', function(data){
          /*  layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })*/
            var json={"json":JSON.stringify(data.field),"username":${user.username}};
            //完成ajax操作
            $.post("http://localhost:8080/work001/AddNotice",json,function (data) {
                /*alert(data);*/
                if ((data=="1")){
                    layer.msg("新闻添加成功",{icon:1})
                }else {
                    layer.msg("新闻添加失败",{icon:5})
                }

            })
            return false;
        });



        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function(){
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });
</script>

</html>
