import com.LJY.Service.UserService;
import com.LJY.Service.UserServiceImpl;
import com.LJY.table.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/DeleteUser")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        //获取前端信息
        String number = request.getParameter("number");
        System.out.println("获取的信息："+number);
        //通过账号删除信息
        UserService us = new UserServiceImpl();
        int i = us.deleteUser(number);
        if (i>0){
            System.out.println("删除成功");
            response.getWriter().append("1");
        }else{
            System.out.println("删除失败");
            response.getWriter().append("0");
        }
    }
}