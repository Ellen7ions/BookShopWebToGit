package com.langsin.servlet;

import com.langsin.beans.User;
import com.langsin.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserInfoChangePost", urlPatterns = "/UserInfoChange")
public class UserInfoChangePost extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String newusername = request.getParameter("newusername");
        String useremail = request.getParameter("useremail");
        String newpassword = request.getParameter("newpassword");
        System.out.println(newusername + " " + newpassword);
        User user = new UserService().updateUser(newusername, useremail, newpassword);
        request.setAttribute("chanegInfoSuccess", Boolean.TRUE);
        request.getSession().setAttribute("user", user);
        request.getRequestDispatcher("./userInfo.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
