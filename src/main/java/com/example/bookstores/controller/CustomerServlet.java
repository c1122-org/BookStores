package com.example.bookstores.controller;

import com.example.bookstores.model.Customer;
import com.example.bookstores.service.CustomerService;
import com.example.bookstores.service.ICustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet(name = "CustomerServlet", value = "/customers")
public class CustomerServlet extends HttpServlet {
    ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "update":
                showFormUpdate(request, response);
                break;
            default:
                displayAll(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "update":
                updateCustomer(request,response);
                break;
            default:
                displayAll(request, response);
        }
    }

    private void displayAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listCustomer", customerService.displayAll());
        request.getRequestDispatcher("customer/list.jsp").forward(request, response);
    }

    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findByID(id);
        request.setAttribute("customer", customer);
        request.getRequestDispatcher("/customer/update.jsp").forward(request, response);
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        String email = request.getParameter("email");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String nameAccount=request.getParameter("nameAccount");
        customerService.updateByID(new Customer(id,name,date,email,gender,nameAccount));
        response.sendRedirect("/customers");
    }
}
