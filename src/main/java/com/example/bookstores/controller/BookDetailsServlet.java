package com.example.bookstores.controller;

import com.example.bookstores.model.Book;
import com.example.bookstores.service.BookService;
import com.example.bookstores.service.IBookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BookDetailsServlet", value = "/bookDetails")
public class BookDetailsServlet extends HttpServlet {
    private IBookService iBookService=new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        try {
            request.setAttribute("book",iBookService.findById(id));

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        request.getRequestDispatcher("/user/detail.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
