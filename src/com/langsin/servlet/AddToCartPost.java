package com.langsin.servlet;

import com.langsin.beans.Book;
import com.langsin.beans.User;
import com.langsin.dao.impl.BookDaoImpl;
import com.langsin.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddToCartPost", urlPatterns = "/AddToCartPost")
public class AddToCartPost extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("user");
        String number = request.getParameter("number");
        String id = request.getParameter("id");

        System.out.println(number);
        System.out.println(id);

        if (new BookService().buyBook(user, id, Integer.parseInt(number))) {
            request.setAttribute("successBuy", Boolean.TRUE);
        } else {
            request.setAttribute("failBuy", Boolean.TRUE);
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
