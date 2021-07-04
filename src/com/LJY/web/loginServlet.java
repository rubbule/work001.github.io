import com.LJY.Service.UserService;
import com.LJY.Service.UserServiceImpl;
import com.LJY.table.Counts;
import com.LJY.table.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.attribute.UserPrincipalLookupService;

@WebServlet(name = "loginServlet", value = "/loginServlet")
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");
        String password = request.getParameter("password");
        System.out.println("用户名："+number+"\t密码："+password);
        String codeInput = request.getParameter("codeInput");
        String code = (String) request.getSession().getAttribute("code");
        System.out.println(code+" "+codeInput);
        String logininfo = "对不起，验证码错误，请重新输入";
        if (code.equalsIgnoreCase(codeInput)) {
            UserService us = new UserServiceImpl();
            User user = us.login(number, password);
            if (user!=null){
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                request.getRequestDispatcher("main.jsp").forward(request,response);
                Counts counts = us.findcount();
                session.setAttribute("counts",counts);
//                request.setAttribute("usercount","120");
                return;
            }else {
                logininfo = "对不起，你输入的用户名或者密码不正确，请检查";
                System.out.println("登录失败");
            }

        }
        request.setAttribute("logininfo",logininfo);
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
