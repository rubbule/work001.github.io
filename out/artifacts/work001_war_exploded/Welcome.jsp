<%--
  Created by IntelliJ IDEA.
  User: LJY
  Date: 2021/5/19
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
    <style>
        body{
            margin: 20px 0px 0px 20px;
        }
        #table1{
            border-collapse: separate;
            border-spacing: 30px 0px;
        }
        .tdstyle {
            text-align: center;
            background: #009688;
            height: 150px;
            width: 150px;
            border-radius: 75px;
        }
    </style>
</head>
<body>
<table id="table1">
    <tr>
        <td class="tdstyle">
            <a>
                <span style="color: #FFFFFF">用户数量</span>
                <br><br>
                <span style="font-weight: bold;font-size: 50px;color: #FFFFFF">${counts.cusercount}</span>
            </a>
        </td>
        <td class="tdstyle">
            <a>
                <span style="color: #FFFFFF">员工数量</span>
                <br><br>
                <span style="font-weight: bold;font-size: 50px;color: #FFFFFF">${counts.empcount}</span>
            </a>
        </td>
        <td class="tdstyle">
            <a>
                <span style="color: #FFFFFF">角色数量</span>
                <br><br>
                <span style="font-weight: bold;font-size: 50px;color: #FFFFFF">${counts.rolecount}</span>
            </a>
        </td>
        <td class="tdstyle">
            <a>
                <span style="color: #FFFFFF">职位数量</span>
                <br><br>
                <span style="font-weight: bold;font-size: 50px;color: #FFFFFF">${counts.jobcount}</span>
            </a>
        </td>
        <td class="tdstyle">
            <a>
                <span style="color: #FFFFFF">新闻数量</span>
                <br><br>
                <span style="font-weight: bold;font-size: 50px;color: #FFFFFF">${counts.noticecount}</span>
            </a>
        </td>
        <td class="tdstyle">
            <a>
                <span style="color: #FFFFFF">文件数量</span>
                <br><br>
                <span style="font-weight: bold;font-size: 50px;color: #FFFFFF">${counts.uploadcount}</span>
            </a>
        </td>
        <td class="tdstyle">
            <a>
                <span style="color: #FFFFFF">部门数量</span>
                <br><br>
                <span style="font-weight: bold;font-size: 50px;color: #FFFFFF">${counts.deptcount}</span>
            </a>
        </td>
    </tr>

</table>


</body>
</html>
