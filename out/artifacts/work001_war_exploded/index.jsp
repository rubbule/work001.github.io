<%--
  Created by IntelliJ IDEA.
  User: LJY
  Date: 2021/5/14
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>人事系统登录</title>
  <link  rel="stylesheet" type="text/css" href="logincss/css/supersized.css">
  <script type="text/javascript" src="logincss/js/jquery.min.js"></script>
  <script type="text/javascript" src="logincss/js/supersized.3.2.7.min.js"></script>
  <script type="text/javascript" src="logincss/js/supersized-init.js"></script>
  <link rel="stylesheet" href="layui/css/layui.css">
  <script src="layui/layui.js"></script>

  <style>
    *{
      margin: 0;
      padding: 0;
    }
    .cavs{
      z-index:1;
      position: fixed;
      width:95%;
      margin-left: 20px;
      margin-right: 20px;
    }

    html,body{
      width: 100%;
      height: 100%;


      /*background-image: -webkit-linear-gradient(top, #02164f, #000);*/
      /*background-image: -moz-linear-gradient(top, #02164f, #000);*/
      /*background-image: -ms-linear-gradient(top, #02164f, #000);*/
      /*background-image: -o-linear-gradient(top, #02164f, #000);*/
      /*background-image: linear-gradient(to bottom, #02164f, #000);*/
      /*background-color: #1A1A1A;*/
    }



    .dela-presets-container-1 .dela-preset-1-2 {
      position: relative;
      font-size: 16px;
      width: 24.4em;
      min-width: 11em;
      padding: 5.6em 3.68em 6.1em 3.68em;
      box-shadow: 0 0 1em rgba(0, 0, 0, 0.2);
      font-family: Roboto;
      background: linear-gradient(to top, #b76cd2 0, #4c3bb3 100%);
    }
    .dela-presets-container-1 .dela-preset-1-2 .dela-form__title {
      color: #fff;
      margin: 0;
      font-size: 2.38em;
      font-weight: 400;
      text-align: center;
      margin-bottom: 0.89em;
    }
    .dela-presets-container-1 .dela-preset-1-2 {
      position: relative;
      font-size: 16px;
      width: 390px;
      padding: 56px 65px 55px 65px;
      box-shadow: 0 0 1em rgba(0, 0, 0, 0.2);
      font-family: Roboto;
      background: linear-gradient(to top, #b76cd2 0, #4c3bb3 100%);
    }

    .dela-presets-container-1 .dela-preset-1-2 input[type="email"], .dela-presets-container-1 .dela-preset-1-2 input[type="password"], .dela-presets-container-1 .dela-preset-1-2 input[type="text"] {
      color: #fff;
      font-family: Roboto;
      font-size: 1em;
      font-weight: 200;
      width: 100%;
      background: none;
      border: none;
      padding: 0.8em 0;
      border-bottom: 0.063em solid rgba(255, 255, 255, 0.2);
      margin-bottom: 1.1em;
      border-radius: 0;
    }

    .dela-presets-container-1{
      z-index: 100;
      position: absolute;
      left: 35%;
      opacity: 0.8;
      top: 100px;
    }
    .dela-presets-container-1 .dela-preset-1-2 .dela-form__checkbox {
      display: inline-block;
      font-size: 0.875em;
      margin-top: 0.7em;
      font-weight: 200;
      cursor: pointer;
      color: #fff;
      overflow: hidden;
      position: relative;
    }

    .dela-presets-container-1 .dela-preset-1-2 input[type="submit"] {
      margin: 0 auto;
      display: block;
      color: #fff;
      font-family: Roboto;
      font-size: 1em;
      font-weight: 200;
      width: 10.25em;
      min-height: 2.71em;
      background: none;
      border: 0.063em solid #fff;
      border-radius: 0.6em;
      cursor: pointer;
      margin-top: 2.1em;
      -webkit-appearance: none;
    }




    .stars, .twinkl {
      position:absolute;
      top:0;
      left:0;
      right:0;
      bottom:0;
      width:100%;
      height:100%;
      display:block;
    }



    @keyframes move-twink-back {
      from {background-position:0 0;}
      to {background-position:-10000px 5000px;}
    }
    input::-webkit-input-placeholder {
      /* WebKit, Blink, Edge 适配谷歌*/
      color: #fff !important;
    }

    input::-moz-placeholder {
      /* Mozilla Firefox 4 to 18 适配火狐*/
      color: #fff !important;
    }

    input:-moz-placeholder {
      /* Mozilla Firefox 19+ 适配火狐*/
      color: #fff !important;
    }

    input:-ms-input-placeholder {
      /* Internet Explorer 10-11 适配ie*/
      color: #fff !important;
    }

    input:focus {
      outline-offset: -2px;
    }
    :focus {
      outline: -webkit-focus-ring-color auto 0px;
    }
  </style>
</head>
<body>
<%--<div class="stars"></div>--%>
<%--<div class="twinkl"></div>--%>
<%--<div class="ball"></div>--%>
<div class="dela-presets-container-1">
  <form class="dela-preset-1-2" action="loginServlet" method="get">
    <p class="dela-form__title">登录</p>
    <div><p style="color: red;">${logininfo}</p></div>
    <div><input type="text" name="number" placeholder="User" required="required" autocomplete="off"></div>
    <div><input type="password" name="password" placeholder="Password"  required="required" autocomplete="off"></div>
    <%--    <input type="password" name="password" id="pass-1" placeholder="Password" required="">--%>
<%--    <input type="text" name="phone number" placeholder="phone number" required="" autocomplete="phone number">--%>
    <input type="password" placeholder="Code" style="width: 216px;vertical-align: top;display: inline-block" name="codeInput" oninput="this.setCustomValidity(this.value != document.getElementById('pass-'+1).value ? 'Passwords are not the same.' : '')"
           required="">
    <a style="display: inline-block;width: 164px;height: 43px;border: 1px #f00 solid"onclick="getcode()"href="javascript:void(0);"><img src="${pageContext.request.contextPath}/codeServlet" alt="验证码" height="43" width="164" id="code"></a>
<%--      <span></span></label>--%>
<%--    <br>--%>
    <input type="submit" name="submit" value="Login" >
    <br>
    <div   style="margin-bottom: 0;padding-left: 20%">
      <div id="layerDemo" style="float:left;">
        <a data-method="notice" class="layui-btn" >regiester</a>
      </div>
      <div style="float:left;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </div>
      <div id="layerDemo1" style="float:left;">
        <a data-method="notice" class="layui-btn" >lost password</a>
      </div>
    </div>
  </form>
</div>

</body>
<script>
  layui.use(['layer','jquery'], function(){ //独立版的layer无需执行这一句
    var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

    //触发事件
    var active = {
      notice: function(){
        //示范一个公告层
        layer.open({
          type: 1
          ,title: '<span style="font-size: 30px;font-weight: bold">欢迎新用户注册</span>'//不显示标题栏
          ,closeBtn: false
          ,area:['800px','480px']
          ,shade: 0.8
          ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
          ,btn: ['取消注册']
          ,btnAlign: 'c'
          ,moveType: 1 //拖拽模式，0或者1
          ,content: '<iframe src="reg.jsp" width="790px" height="350px"></iframe>'
          ,success: function(layero){
            var btn = layero.find('.layui-layer-btn');
            btn.find('.layui-layer-btn0').attr({
              target: '_blank'
            });
          }
        });
      }
    }
    $('#layerDemo .layui-btn').on('click', function(){
      var othis = $(this), method = othis.data('method');
      active[method] ? active[method].call(this, othis) : '';
    });
    $('#layerDemo1 .layui-btn').on('click', function(){
      layer.msg("密码是：123456");
      // layer.open({
      //     type: 1
      //     ,title: '<span style="font-size: 30px;font-weight: bold">欢迎新用户注册</span>'//不显示标题栏
      //     ,closeBtn: false
      //     ,area:['800px','600px']
      //     ,shade: 0.8
      //     ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
      //     ,btn: ['提交注册', '取消注册']
      //     ,btnAlign: 'c'
      //     ,moveType: 1 //拖拽模式，0或者1
      //     ,content: '<iframe src="reg.html" width="800px" height="600px"></iframe>'
      //     ,success: function(layero){
      //         layer.msg("我不开心了",{icon: 5});
      //         var btn = layero.find('.layui-layer-btn');
      //         btn.find('.layui-layer-btn0').attr({
      //             href: 'http://www.layui.com/'
      //             ,target: '_blank'
      //         });
      //     }
      // });
    });
  });
</script>
<%--刷新验证码--%>
<script>
    function getcode(){
      $("#code").attr("src","${pageContext.request.contextPath}/codeServlet?time="+new Date().getTime());
    }
</script>
</html>