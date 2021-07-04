import com.LJY.Service.UserService;
import com.LJY.Service.UserServiceImpl;
import com.LJY.table.Counts;
import com.LJY.table.User;
import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "FindUsers", value = "/FindUsers")
public class FindUsers extends HttpServlet {
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
        UserService us = new UserServiceImpl();
        //数据库查询数据
        //分页查询
        int page = Integer.parseInt(request.getParameter("page"));

        int limit = Integer.parseInt(request.getParameter("limit"));
        page = (page-1) * limit;
        System.out.println(page+"\t" +limit);
        List<User> userList = us.findusers(page+"",limit+"");

        //将数据封装成json对象
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("msg","");
        //获取user表数量
        Counts counts = (Counts) request.getSession().getAttribute("counts");
        Integer count = counts.getCusercount();
        map.put("count",count);
        map.put("data",userList);
        String json = JSON.toJSONString(map);
        System.out.println("封装好的json"+json);
        //将json格式的数据发送至前端
        response.getWriter().append(json);
    }
}