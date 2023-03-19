package com.example.bookstores.controller;

import com.example.bookstores.model.TypeBook;
import com.example.bookstores.service.ITypeBookService;
import com.example.bookstores.service.TypeBookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TypeBookServlet", value = "/type")
public class TypeBookServlet extends HttpServlet {
    ITypeBookService iTypeBookService = new TypeBookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create" :
                showCreate(request,response);
                break;
            default:
                displayAll(request,response);

        }
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) {

    }

    private void displayAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TypeBook> books = iTypeBookService.findAll();
        request.setAttribute("typeBook",books);
        request.getRequestDispatcher("admin/type/list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
