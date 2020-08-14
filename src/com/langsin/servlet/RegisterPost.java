package com.langsin.servlet;

import com.langsin.beans.User;
import com.langsin.dao.impl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterPost", urlPatterns = "/RegisterPost")
public class RegisterPost extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        UserDaoImpl userDao = new UserDaoImpl();
        User db = userDao.query(email);
        if (db != null) {
            request.setAttribute("userExists", Boolean.TRUE);
            request.getRequestDispatcher("./login.jsp").forward(request, response);
        } else {
            User user = new User();
            user.setPrivilege("user");
            user.setPwd(pwd);
            user.setEmail(email);
            user.setName(name);
            user.setHistoryBooks(null);
            userDao.add(user);
            response.sendRedirect("./index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
