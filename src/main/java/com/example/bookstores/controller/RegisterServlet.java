package com.example.bookstores.controller;

import com.example.bookstores.model.Account;
import com.example.bookstores.model.Customer;
import com.example.bookstores.service.AccountServiceImpl;
import com.example.bookstores.service.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    AccountServiceImpl accountService = new AccountServiceImpl();
    CustomerService customerService = new CustomerService();
    /**
     * Function: doGet
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameAccount = request.getParameter("nameAccount");
        String passAccount = request.getParameter("passAccount");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String date = request.getParameter("date");
        int gender = Integer.parseInt(request.getParameter("gender"));
        Account account = accountService.checkLogin(nameAccount,passAccount);
        if ((account != null) || accountService.existedAccount(nameAccount)){
            String message = "Tên người dùng đã tồn tại!! ";
            request.setAttribute("message",message);
            request.getRequestDispatcher("/user/registration.jsp").forward(request,response);
        } else {
            Account account1 = new Account(nameAccount,passAccount,0);
            accountService.register(account1);
            customerService.create(name,email,date,gender,nameAccount);
            response.sendRedirect("/user/login.jsp");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
