package com.example.bookstores.controller;

import com.example.bookstores.model.TypeBook;
import com.example.bookstores.service.ITypeBookService;
import com.example.bookstores.service.TypeBookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
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
            case "delete":
                deleteByID(request,response);
                break;
            default:
                displayAll(request,response);
                break;
        }
    }
    /**
     * private void deleteByID(HttpServletRequest request, HttpServletResponse response)
     * Delete typeBook information to db
     *
     * @author KhaiNLV
     * @since 2023/03/16
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void deleteByID(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String categoryId = request.getParameter("categoryId");
        iTypeBookService.deleteByID(categoryId);
        response.sendRedirect("/type");
    }

    /**
     * private void showFormUpdate(HttpServletRequest request, HttpServletResponse response)
     * show form update typeBook information to db
     *
     * @author KhaiNLV
     * @since 2023/03/16
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("categoryId");
        TypeBook typeBook = iTypeBookService.findByID(categoryId);
        request.setAttribute("type", typeBook);
        request.getRequestDispatcher("admin/type/update.jsp").forward(request, response);
    }

    /**
     * private void showCreate(HttpServletRequest request, HttpServletResponse response)
     * show form create typeBook information to db
     *
     * @author KhaiNLV
     * @since 2023/03/16
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void showCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("admin/type/create.jsp");
    }

    /**
     * private void displayAll(HttpServletRequest request, HttpServletResponse response)
     * display all list typeBook information to db
     *
     * output: list typeBook
     *
     * @author KhaiNLV
     * @since 2023/03/16
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
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
                updateType(request,response);
                break;
            case "search":
                searchByName(request,response);
                break;
            default:
                displayAll(request,response);
        }
    }

    /**
     * private void searchByName(HttpServletRequest request,HttpServletResponse response)
     * search by name typeBook information to db
     *
     * output: list typeBook
     *
     * @author KhaiNLV
     * @since 2023/03/16
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */

    private void searchByName(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String name= request.getParameter("search");
        request.setAttribute("typeBook", iTypeBookService.findByName(name));
        request.setAttribute("search1",name);
        request.getRequestDispatcher("admin/type/list.jsp").forward(request,response);
    }

    /**
     * private void updateType(HttpServletRequest request, HttpServletResponse response)
     * update typeBook information to db
     *
     *
     * @author KhaiNLV
     * @since 2023/03/16
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void updateType(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String categoryId = request.getParameter("categoryId");
        String categoryName = request.getParameter("categoryName");
        boolean flag=false;
        for (TypeBook typeBook:iTypeBookService.findAll()){
            if (typeBook.getCategoryName().equals(categoryName)&&typeBook.getCategoryId()!=categoryId){
                flag=true;
                break;
            }
        }
        if (flag){
            request.setAttribute("customer",new TypeBook(categoryId,categoryName));
            String mess="Bạn đã nhập trùng tên loại sách";
            request.setAttribute("message",mess);
            request.getRequestDispatcher("admin/type/update.jsp").forward(request, response);
        }else {
            iTypeBookService.update(new TypeBook(categoryId,categoryName));
            request.getSession().setAttribute("message", "Bạn đã sửa dữ liệu thành công!");
            response.sendRedirect("/type");
        }

    }

    /**
     * private void createTypeBook(HttpServletRequest request, HttpServletResponse response)
     * create typeBook information to db
     *
     *
     * @author KhaiNLV
     * @since 2023/03/16
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void createTypeBook(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String categoryId = request.getParameter("categoryId");
        String categoryName = request.getParameter("categoryName");
        TypeBook typeBook = new TypeBook(categoryId,categoryName);
        iTypeBookService.create(typeBook);
        request.getSession().setAttribute("message", "Bạn đã thêm dữ liệu thành công!");
        response.sendRedirect("/type");
    }
}
