package com.langsin.servlet;

import com.langsin.beans.Page;
import com.langsin.service.BookService;
import com.langsin.service.PageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NextPagePost", urlPatterns = "/NextPagePost")
public class NextPagePost extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Page pageNum = (Page) request.getSession().getAttribute("pageNum");
        BookService bookService = new BookService();
        if (!bookService.checkFull(pageNum.getPageNum() + 1)) {
            System.out.println("????");
            pageNum = new PageService().loadPage(pageNum.getPageNum() + 1);
        }

        request.getSession().setAttribute("pageNum", pageNum);
        request.getRequestDispatcher("./index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
