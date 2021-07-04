import com.LJY.Service.UserService;
import com.LJY.Service.UserServiceImpl;
import com.LJY.table.User;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String json = request.getParameter("json");
        System.out.println(json);
        JSONObject jsonObject = JSON.parseObject(json);
        String checkcode = jsonObject.getString("checkcode");
        System.out.println("得到用户输入的验证码" + checkcode);
        //获取验证码
        String code = (String) request.getSession().getAttribute("code");
        System.out.println(code);
        //获取封装对象
        User user = JSON.parseObject(json, User.class);
        System.out.println(user);
        //判断用户是否存在
        UserService us = new UserServiceImpl();
        boolean b = us.finduser(user.getNumber());

        String regisMsg = "验证码错误";
        if (checkcode.equalsIgnoreCase(code)) {

            if (b) {
                user.setRole_id(1);
                user.setCreatedate("2001-05-09");
                int i = us.register(user);
                System.out.println("封装好的数据" + user);

                if (i > 0) {
                    regisMsg = "1";
                } else {
                    regisMsg = "0";
                }
                return;
            }else {
                regisMsg = "该用户已经存在";
            }
        }
        response.getWriter().append(regisMsg);

    }
}