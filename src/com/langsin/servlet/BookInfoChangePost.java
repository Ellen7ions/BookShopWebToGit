package com.langsin.servlet;

import com.langsin.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BookInfoChangePost", urlPatterns = "/BookInfoChangePost")
public class BookInfoChangePost extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String bookid = request.getParameter("bookid");
        String newleft = request.getParameter("newleft");
        String newprice = request.getParameter("newprice");
        new BookService().bookInfoChange(bookid, newleft, newprice);
        request.getRequestDispatcher("./index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
