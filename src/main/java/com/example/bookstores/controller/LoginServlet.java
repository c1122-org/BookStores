package com.example.bookstores.controller;

import com.example.bookstores.model.Account;
import com.example.bookstores.service.AccountServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    AccountServiceImpl accountService = new AccountServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameAccount = request.getParameter("nameAccount");
        String passAccount = request.getParameter("passAccount");
        Account account = accountService.checkLogin(nameAccount,passAccount);
        if (account == null){
            String message = "username or password is incorrect!!";
            request.setAttribute("message",message);
            response.sendRedirect("/user/login.jsp");
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("account",account);
            if (account.getRoleAccount() == 1){
                response.sendRedirect("/customers");
            }else {
                response.sendRedirect("/user/index2.jsp");
            }
        }
    }
}
