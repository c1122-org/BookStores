package com.example.bookstores.controller;

import com.example.bookstores.model.Book;
import com.example.bookstores.model.Category;
import com.example.bookstores.service.BookService;
import com.example.bookstores.service.IBookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 *Show list of books
 * Create books
 * Search books
 * Update books
 * Delete books
 */
@WebServlet(name = "AdminBookServlet", value = "/adminBook")
public class AdminBookServlet extends HttpServlet {
    private IBookService iBookService=new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                try {
                    showCreate(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "edit":
                try {
                    showEdit(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "search":
                performSearch(request, response);
                break;
            default:
                showBooksList(request, response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        String tittleSearch = request.getParameter("tittleSearch");
        if (tittleSearch == null) {
            tittleSearch = "";
        }
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                try {
                    performCreate(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "edit":
                try {
                    performEdit(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "delete":
                deleteBook(request,response);
                break;

            default:
                showBooksList(request, response);
                break;

        }

    }

    /**
     * Function: Delete books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void deleteBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        String mess = "Xóa không thành công";
        boolean check = iBookService.deleteBook(id);
        if (!check) {
            mess = "Xóa thành công";
        }
        request.setAttribute("mess", mess);
        List<Book> booksList = null;
        try {
            booksList = iBookService.findAll(null);
        } catch (java.sql.SQLException throwables) {
            throw new RuntimeException(throwables);
        }
        request.setAttribute("bookList",booksList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/list.jsp");
        dispatcher.forward(request,response);
    }

    /**
     * Function: Perform edit books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param request
     * @param response
     * @throws SQLException
     * @throws IOException
     */
    private void performEdit(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nameBook = request.getParameter("nameBook");
        Double price = Double.parseDouble(request.getParameter("price"));
        String author= request.getParameter("author");
        String publishingCompany=request.getParameter("publishingCompany");
        String publisher= request.getParameter("publisher");
        String translator=request.getParameter("translator");
        String describes=request.getParameter("describes");
        String image=request.getParameter("image");
        int categoryID = Integer.parseInt(request.getParameter("categoryID"));
        Category category = new Category(categoryID);
        Book book= new Book(nameBook,price,author,publishingCompany,publisher,translator,describes,image,category);
        iBookService.updateBook(id,book);
        response.sendRedirect("/adminBook");

    }

    /**
     * Function: Perform create books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param request
     * @param response
     * @throws IOException
     * @throws SQLException
     */
    private void performCreate(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        String nameBook = request.getParameter("nameBook");
        Double price = Double.parseDouble(request.getParameter("price"));
        String author= request.getParameter("author");
        String publishingCompany=request.getParameter("publishingCompany");
        String publisher= request.getParameter("publisher");
        String translator=request.getParameter("translator");
        String describes=request.getParameter("describes");
        String image=request.getParameter("image");
        int categoryID = Integer.parseInt(request.getParameter("categoryID"));
        Category category = new Category(categoryID);
        Book book = new Book(nameBook,price,author,publishingCompany,publisher,translator,describes,image,category);

        iBookService.save(book);
        response.sendRedirect("/adminBook");
    }

    /**
     * Function: Show books list
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void showBooksList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        try {
            request.setAttribute("nameSearch",name);
            request.setAttribute("bookList", iBookService.findAll(name));
        } catch (java.sql.SQLException throwables) {
            throw new RuntimeException(throwables);
        }
        request.getRequestDispatcher("/admin/list.jsp").forward(request, response);
    }

    private void performSearch(HttpServletRequest request, HttpServletResponse response) {
    }

    /**
     * Function: show edit books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param request
     * @param response
     * @throws SQLException
     * @throws ServletException
     * @throws IOException
     */
    private void showEdit(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Book book = iBookService.findById(id);
        request.setAttribute("book", book);
        request.setAttribute("categoryList",iBookService.categoryList());
        request.getRequestDispatcher("/admin/edit.jsp").forward(request, response);
    }

    /**
     * Function: show create books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param request
     * @param response
     * @throws SQLException
     * @throws ServletException
     * @throws IOException
     */
    private void showCreate(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        request.setAttribute("categoryList",iBookService.categoryList());
        request.getRequestDispatcher("/admin/create.jsp").forward(request, response);
    }
}
