package com.langsin.servlet;

import com.langsin.beans.User;
import com.langsin.dao.impl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/LoginPost")
public class LoginPost extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        System.out.println(email + " " + pwd);

        UserDaoImpl userDao = new UserDaoImpl();
        User user = userDao.query(email);

        System.out.println(user);

        if (user == null) {
            request.setAttribute("loginNoUser", Boolean.TRUE);
            request.getRequestDispatcher("./register.jsp").forward(request, response);
        } else if (!user.getPwd().equals(pwd)) {
            request.setAttribute("loginFailPwd", Boolean.TRUE);
            request.getRequestDispatcher("./login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("./index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
