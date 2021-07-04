<%--
  Created by IntelliJ IDEA.
  User: LJY
  Date: 2021/5/15
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>人事系统主页面</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header" style="background-color: #009688">
        <div class="layui-logo" style="font-weight: bold;font-size: 26px;color: #FFFFFF">人事管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-util"
                                                     style="font-size: 18px; color: #FFFFFF;"></i> 系统管理</a></li>
            <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-file"
                                                     style="font-size: 18px; color: #FFFFFF;"></i>内容管理</a></li>
            <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-login-wechat"
                                                     style="font-size: 18px; color: #FFFFFF;"></i>微型公众</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <!--            <i class="layui-icon layui-icon-time" style="font-size: 15px; color: #00F7DE;float:left;" ></i>-->
            <!--            <li class="layui-nav-item layui-hide-xs"  style="font-weight: bold;color: yellow;float:left;font-size: 15px" ></li>-->
            <!--                <span id="clock"></span>-->
            <li class="layui-nav-item layui-hide-xs"><a href=""><i class="layui-icon layui-icon-time" style="font-size: 15px;color: #FF5722"></i>
                <span id="time" style="font-weight: bold;color: yellow;font-size: 15px"></span></a></li>


            <!--            <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-screen-full"-->
            <!--                                                     style="font-size: 18px; color: #FFFFFF;"></i>全屏</a></li>-->
            <!--            <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-password"-->
            <!--                                                     style="font-size: 18px; color: #FFFFFF;"></i>锁屏</a></li>-->
            <!--            <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-fonts-clear"-->
            <!--                                                     style="font-size: 18px; color: #FFFFFF;"></i>清除缓存</a></li>-->
            <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-username"
                                                     style="font-size: 18px; color: #FFFFFF;"></i>个人信息</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/logout"><i class="layui-icon layui-icon-return"
                                                     style="font-size: 18px; color: #FFFFFF;"></i>退出登录</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->

            <center>
                <li class="layui-nav-item" style="height: 150px;margin-top: 20px;">
                    <a href="javascript:;">
                        <img src="img/e.jpg" class="layui-nav-img" style="width: 100px;height: 100px">
                        <p style="color: #FFFFFF;margin-top: 20px">欢迎<span style="color: #0000FF">${user.username}</span>登录！</p>

                    </a>
                </li>
            </center>
            <ul class="layui-nav layui-nav-tree" lay-filter="test">

                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-user"
                                              style="font-size: 18px; color: #FFFFFF;"></i>用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;"data-url="finduser.html"
                               data-id="user" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>用户信息" data-type="tabAdd" class="site-demo-active" ><i class="layui-icon layui-icon-user"
                                                                                                                               style="font-size: 18px; color: #FFFFFF;"></i>部门查询</a></dd>
                        <dd><a href="javascript:;" data-url="addNotice.jsp"
                               data-id="adddept" data-title="<i class='layui-icon  layui-icon-addition'
                            style='font-size: 18px; color: #009688;'></i>添加部门" data-type="tabAdd" class="site-demo-active" ><i class="layui-icon layui-icon-addition"
                                                                                                                               style="font-size: 18px; color: #FFFFFF;"></i>添加部门</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-edit"
                                              style="font-size: 18px; color: #FFFFFF;"></i>部门管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;"data-url="login1.html"
                               data-id="user" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>用户信息" data-type="tabAdd" class="site-demo-active" ><i class="layui-icon layui-icon-user"
                                                                                                                               style="font-size: 18px; color: #FFFFFF;"></i>部门查询</a></dd>
                        <dd><a href="javascript:;" data-url="demo1.html"
                               data-id="adddept" data-title="<i class='layui-icon  layui-icon-addition'
                            style='font-size: 18px; color: #009688;'></i>添加部门" data-type="tabAdd" class="site-demo-active" ><i class="layui-icon layui-icon-addition"
                                                                                                                               style="font-size: 18px; color: #FFFFFF;"></i>添加部门</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-group"
                                              style="font-size: 18px; color: #FFFFFF;"></i>职位管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;"data-url="test.html"
                               data-id="selectUserInfo" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>用户信息" data-type="tabAdd" class="site-demo-active" ><i class="layui-icon layui-icon-user"
                                                                                                                               style="font-size: 18px; color: #FFFFFF;"></i>个人信息</a></dd>
                        <dd><a href="javascript:;" data-url="demo1.html"
                               data-id="updatePassword" data-title="<i class='layui-icon  layui-icon-key'
                            style='font-size: 18px; color: #009688;'></i>修改密码" data-type="tabAdd" class="site-demo-active" ><i class="layui-icon layui-icon-key"
                                                                                                                               style="font-size: 18px; color: #FFFFFF;"></i>修改密码</a></dd>
                    </dl>
                </li>


                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-set-sm"
                                              style="font-size: 18px; color: #FFFFFF;"></i>员工管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="addBook.html"
                               data-id="addBook" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>添加数据" data-type="tabAdd" class="site-demo-active">
                            <i class="layui-icon layui-icon-user" style="font-size: 18px; color: #FFFFFF;"></i>添加数据</a></dd>
                        <dd><a href="javascript:;"><i class="layui-icon layui-icon-key"
                                                      style="font-size: 18px; color: #FFFFFF;"></i>修改密码</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-diamond"
                                              style="font-size: 18px; color: #FFFFFF;"></i>角色管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;"><i class="layui-icon layui-icon-user"
                                                      style="font-size: 18px; color: #FFFFFF;"></i>个人信息</a></dd>
                        <dd><a href="javascript:;"><i class="layui-icon layui-icon-key"
                                                      style="font-size: 18px; color: #FFFFFF;"></i>修改密码</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-website"
                                              style="font-size: 18px; color: #FFFFFF;"></i>公告管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;"><i class="layui-icon layui-icon-user"
                                                      style="font-size: 18px; color: #FFFFFF;"></i>个人信息</a></dd>
                        <dd><a href="javascript:;"><i class="layui-icon layui-icon-link"
                                                      style="font-size: 18px; color: #FFFFFF;"></i>修改密码</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-website"
                                              style="font-size: 18px; color: #FFFFFF;"></i>下载中心</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;"><i class="layui-icon layui-icon-user"
                                                      style="font-size: 18px; color: #FFFFFF;"></i>个人信息</a></dd>
                        <dd><a href="javascript:;"><i class="layui-icon layui-icon-link"
                                                      style="font-size: 18px; color: #FFFFFF;"></i>修改密码</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href=""><i class="layui-icon layui-icon-link"
                                                         style="font-size: 18px; color: #FFFFFF;"></i>发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div>
            <blockquote class="layui-elem-quote">
                <div class="layui-input-inline">
                    <input type="text" name="title" lay-verify="pass" placeholder="请输入文章标题进行查询" autocomplete="off"
                           class="layui-input">

                </div>
                <div class="layui-input-inline">
                    <button class="layui-btn">查询</button>
                </div>
                <div class="layui-input-inline">
                    <button class="layui-btn layui-btn-normal site-demo-active" data-type="tabAdd">添加文档</button>
                </div>
                <div class="layui-input-inline">
                    <button class="layui-btn ">推荐文档</button>
                </div>
                <div class="layui-input-inline">
                    <button class="layui-btn ">文档审核</button>
                </div>
                <div class="layui-input-inline">
                    <button class="layui-btn layui-btn-danger ">批量删除</button>
                </div>


            </blockquote>
            <div class="layui-tab layui-tab-brief " lay-filter="demo" lay-allowClose="true">
                <ul class="layui-tab-title">
                    <li class="layui-this"><i class="layui-icon layui-icon-home"
                                              style="font-size: 18px; color: #FFFFFF;"></i>Welcome</li>

                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src="Welcome.jsp" style="width: 100%;height: 100%"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--    <div class="layui-footer">-->
    <!--        &lt;!&ndash; 底部固定区域 &ndash;&gt;-->
    <!--        <center>-->
    <!--            © 五邑大学-->
    <!--        </center>-->
    <!--    </div>-->
</div>

<script>
    //JavaScript代码区域
    layui.use(['element', 'jquery'], function () {
        var element = layui.element;
        var $ = layui.jquery

        //触发事件

        // android 和java有什么关系
        var active = {
            tabAdd: function () {
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项1' //用于演示
                    , content: '内容1'
                    , id: '10' //实际使用一般是规定好的id，这里以时间戳模拟下
                })
                active.tabChange(10);
            }
            , tabDelete: function (othis) {
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”


                othis.addClass('layui-btn-disabled');
            }
            , tabChange: function () {
                //切换到指定Tab项
                element.tabChange('demo', '10'); //切换到：用户管理
            }
        };

        //触发事件
        var active = {
            //在这里给active绑定几项事件，后面可通过active调用这些事件
            tabAdd: function (url, id, title) {
                //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
                //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                element.tabAdd('demo', {
                    title: title,
                    content: '<iframe data-frameid="' + id
                        + '" scrolling="auto" frameborder="0" src="'
                        + url + '" style="width:100%;height: 730px"></iframe>',
                    id: id
                    //规定好的id
                })
                element.render('tab');

            },
            tabChange: function (id) {
                //切换到指定Tab项
                element.tabChange('demo', id); //根据传入的id传入到指定的tab项
            },
            tabDelete: function (id) {
                element.tabDelete("demo", id);//删除
            },
            tabDeleteAll: function (ids) {//删除所有
                $.each(ids, function (i, item) {
                    element.tabDelete("demo", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
                })
            }
        };

        //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
        $('.site-demo-active').on(
            'click',
            function () {
                var dataid = $(this);

                //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
                if ($(".layui-tab-title li[lay-id]").length <= 0) {
                    //如果比零小，则直接打开新的tab项
                    active
                        .tabAdd(dataid.attr("data-url"), dataid
                            .attr("data-id"), dataid
                            .attr("data-title"));
                } else {
                    //否则判断该tab项是否以及存在

                    var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                    $.each($(".layui-tab-title li[lay-id]"),
                        function () {
                            //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                            if ($(this).attr("lay-id") == dataid
                                .attr("data-id")) {
                                isData = true;
                            }
                        })
                    if (isData == false) {
                        //标志为false 新增一个tab项
                        active.tabAdd(dataid.attr("data-url"), dataid
                            .attr("data-id"), dataid
                            .attr("data-title"));
                    }
                }
                //最后不管是否新增tab，最后都转到要打开的选项页面上
                active.tabChange(dataid.attr("data-id"));
            });


    });
</script>
</body>
<!--时间获取-->
<script>
    function time(){
        var vWeek,vWeek_s,vDay;
        vWeek = ["星期天","星期一","星期二","星期三","星期四","星期五","星期六"];
        var date =  new Date();
        year = date.getFullYear();
        month = date.getMonth() + 1;
        day = date.getDate();
        hours = date.getHours();
        minutes = date.getMinutes();
        seconds = date.getSeconds();
        vWeek_s = date.getDay();
        document.getElementById("time").innerHTML = year + "年" + month + "月" + day + "日" + "\t" + hours + ":" + minutes +":" + seconds + "\t" + vWeek[vWeek_s] ;

    };
    setInterval("time()",1000);
</script>
</html>