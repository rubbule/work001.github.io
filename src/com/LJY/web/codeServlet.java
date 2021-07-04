import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "codeServlet", value = "/codeServlet")
public class codeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LineCaptcha lc = CaptchaUtil.createLineCaptcha(200,100,4,30);
        lc.write(response.getOutputStream());
        String code = lc.getCode();
        HttpSession session = request.getSession();
        session.setAttribute("code",code);
        System.out.println(code);
    }
}