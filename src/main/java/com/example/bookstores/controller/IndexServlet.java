package com.example.bookstores.controller;

import com.example.bookstores.model.Book;
import com.example.bookstores.model.TypeBook;
import com.example.bookstores.service.BookService;
import com.example.bookstores.service.IBookService;
import com.example.bookstores.service.IIndexService;
import com.example.bookstores.service.IndexService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexServlet", urlPatterns = {"/index", ""})
public class IndexServlet extends HttpServlet {
    private IBookService iBookService=new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        try {
            request.setAttribute("nameSearch",name);
            List<Book> books =  iBookService.findAll(name);
            request.setAttribute("bookList", iBookService.findAll(name));
        } catch (java.sql.SQLException throwables) {
            throw new RuntimeException(throwables);
        }
        request.getRequestDispatcher("user/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
