package com.example.bookstores.controller;

import com.example.bookstores.model.Customer;
import com.example.bookstores.model.TypeBook;
import com.example.bookstores.service.ITypeBookService;
import com.example.bookstores.service.TypeBookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

@WebServlet(name = "TypeBookServlet", urlPatterns = "/type")
public class TypeBookServlet extends HttpServlet {
    ITypeBookService iTypeBookService = new TypeBookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create" :
                showCreate(request,response);
                break;
            case "update" :
                showFormUpdate(request, response);
                break;
            default:
                displayAll(request,response);
                break;
        }
    }

    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("categoryId");
        TypeBook typeBook = iTypeBookService.findByID(categoryId);
        request.setAttribute("type", typeBook);
        request.getRequestDispatcher("admin/type/update.jsp").forward(request, response);
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("admin/type/create.jsp");
    }

    private void displayAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TypeBook> books = iTypeBookService.findAll();
        request.setAttribute("typeBook",books);
        request.getRequestDispatcher("admin/type/list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action==null){
            action = "";
        }
        switch (action){
            case "create":
                createTypeBook(request,response);
                break;
            case "update":
                updateCustomer(request,response);
                break;
            default:
                displayAll(request,response);
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String categoryId = request.getParameter("categoryId");
        String categoryName = request.getParameter("categoryName");
        iTypeBookService.update(new TypeBook(categoryId,categoryName));
        response.sendRedirect("/type");
    }

    private void createTypeBook(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String categoryId = request.getParameter("categoryId");
        String categoryName = request.getParameter("categoryName");
        TypeBook typeBook = new TypeBook(categoryId,categoryName);
        iTypeBookService.create(typeBook);
        response.sendRedirect("/type");
    }
}
