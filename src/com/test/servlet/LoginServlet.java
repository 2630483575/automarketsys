package com.test.servlet;

import com.test.dao.UserDao;
import com.test.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //请求处理，获取用户名及密码
        String name = request.getParameter("username");
        String pwd = request.getParameter("pwd");

        //创建user对象
        User user = new User(name,pwd);
        UserDao userDao = new UserDao();
        //通过验证进行跳转
        if (userDao.getLogin(user)) {
            //重定向
            //response.sendRedirect("welcome.jsp");
            //session
            HttpSession session = request.getSession();
            session.setAttribute("name",name);
            Date createTime = new Date(session.getCreationTime());
            //转发
            //request.setAttribute("name",name);
            request.getRequestDispatcher("GetAllServlet").forward(request,response);
        } else {
            request.setAttribute("msg","用户名或者密码错误");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
