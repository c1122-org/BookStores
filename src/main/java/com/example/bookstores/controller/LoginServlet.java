package com.example.bookstores.controller;

import com.example.bookstores.model.Account;
import com.example.bookstores.model.Book;
import com.example.bookstores.service.AccountServiceImpl;
import com.example.bookstores.service.BookService;
import com.example.bookstores.service.CustomerService;
import com.example.bookstores.service.IBookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    AccountServiceImpl accountService = new AccountServiceImpl();
   CustomerService customerService=new CustomerService();
    private IBookService iBookService=new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        try {
            request.setAttribute("nameSearch",name);
            List<Book> books =  iBookService.findAll(name);
            request.setAttribute("bookList1", iBookService.findAll(name));
        } catch (java.sql.SQLException throwables) {
            throw new RuntimeException(throwables);
        }
        request.getRequestDispatcher("user/index2.jsp").forward(request, response);
    }
    /**
     * Function: doPost
     * Create: AnhQN
     * Date create: 20/03/2023
     * @param request   an {@link HttpServletRequest} object that
     *                  contains the request the client has made
     *                  of the servlet
     *
     * @param response  an {@link HttpServletResponse} object that
     *                  contains the response the servlet sends
     *                  to the client
     *
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameAccount = request.getParameter("nameAccount");
        String passAccount = request.getParameter("passAccount");
        Account account = accountService.checkLogin(nameAccount,passAccount);
        if (account == null){
            String message = "*tài khoản hoặc mật khẩu không đúng!!";
            request.setAttribute("message",message);
            request.getRequestDispatcher("/user/login.jsp").forward(request,response);
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("account",account);
            if (account.getRoleAccount() == 1){
                response.sendRedirect("/customers");
            }else {
                session.setAttribute("nameAccount", nameAccount);
                try {
                    request.setAttribute("bookList1",iBookService.findAll(null));
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                request.getRequestDispatcher("/user/index2.jsp").forward(request,response);
            }
        }
    }
}
