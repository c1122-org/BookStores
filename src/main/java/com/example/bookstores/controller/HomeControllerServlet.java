package com.example.bookstores.controller;

import com.example.bookstores.model.Account;
import com.example.bookstores.service.AccountServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HomeControllerServlet", value = "/homeController")
public class HomeControllerServlet extends HttpServlet {
    AccountServiceImpl accountService = new AccountServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("login")){
            Account account = null;
            account = accountService.findAccount(account.getNameAccount(),account.getPassAccount(),account.getRoleAccount());
            if (account != null) {
                if (account.getRoleAccount() == 1){
                    response.sendRedirect("/customer/list.jsp");
                }else {
                    response.sendRedirect("/user/index.jsp");
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
