package com.example.bookstores.controller;

import com.example.bookstores.model.Customer;
import com.example.bookstores.service.CustomerService;
import com.example.bookstores.service.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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
            case "sort":
                sortByName(request,response);
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
            case "search":
                searchByName(request,response);
                break;
            case "create":
                createCustomer(request,response);
                break;
            case "delete":
                deleteByID(request,response);
                break;
            default:
                displayAll(request, response);
        }
    }

    /**
     * public void searchByName(HttpServletRequest request,HttpServletResponse response)
     * get name from user request and return 1 list
     *
     * @author MinhNV
     * @since 2023/03/18
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void searchByName(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("search");
        request.setAttribute("listCustomer",customerService.searchByName(name));
        request.setAttribute("search1",name);
        request.getRequestDispatcher("admin/customer/list.jsp").forward(request,response);
    }

    /**
     *  private void displayAll(HttpServletRequest request, HttpServletResponse response)
     *  Returns the user a list of customer information
     *
     * @author MinhNV
     * @since 2023/03/18
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void displayAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listCustomer", customerService.displayAll());
        request.getRequestDispatcher("admin/customer/list.jsp").forward(request, response);
    }

    /**
     * private void showFormUpdate(HttpServletRequest request, HttpServletResponse response)
     * push customer information to edit form
     *
     * @author MinhNV
     * @since 2023/03/18
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findByID(id);
        request.setAttribute("customer", customer);
        request.getRequestDispatcher("admin/customer/update.jsp").forward(request, response);
    }

    /**
     * private void updateCustomer(HttpServletRequest request, HttpServletResponse response)
     * Update customer information to db
     *
     * @author MinhNV
     * @since 2023/03/18
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        String email = request.getParameter("email");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String nameAccount=request.getParameter("nameAccount");
        boolean flag=false;
        for (Customer customer:customerService.displayAll()){
            if (customer.getEmail().equals(email)&&customer.getId()!=id){
                flag=true;
                break;
            }
        }
        if (flag){
            request.setAttribute("customer",new Customer(id,name,date,email,gender,nameAccount));
            String mess="Bạn đã nhập trùng email";
            request.setAttribute("mess",mess);
            request.getRequestDispatcher("admin/customer/update.jsp").forward(request, response);
        }else {
            customerService.updateByID(new Customer(id,name,date,email,gender,nameAccount));
            request.getSession().setAttribute("message", "Bạn đã cập nhập dữ liệu thành công!");
            response.sendRedirect("/customers");
        }

    }

    /**
     * private void createCustomer(HttpServletRequest request, HttpServletResponse response)
     * get information from client and add to db
     *
     * @author MinhNV
     * @since 2023/03/18
     * @param request
     * @param response
     */
    private void createCustomer(HttpServletRequest request, HttpServletResponse response){
        String name=request.getParameter("name");
        String date=request.getParameter("date");
        String email=request.getParameter("email");
        int gender =Integer.parseInt(request.getParameter("gender"));
        String nameAccount=request.getParameter("nameAccount");
        customerService.create(name,date,email,gender,nameAccount);
    }

    /**
     * private void sortByName(HttpServletRequest request,HttpServletResponse response)
     * sort customer list
     *
     * @author MinhNV
     * @since 2023/03/18
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void sortByName(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Customer> list=customerService.sortByName();
        request.setAttribute("listCustomer",list);
        request.getRequestDispatcher("customer/list.jsp").forward(request,response);
    }

    /**
     * private void deleteByID(HttpServletRequest request,HttpServletResponse response)
     * delete customer by id
     *
     * @author MinhNV
     * @since 2023/03/18
     * @param request
     * @param response
     * @throws IOException
     */
    public void deleteByID(HttpServletRequest request,HttpServletResponse response) throws IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        System.out.println("aaaaa");
        customerService.deleteByID(id);
        response.sendRedirect("/customers");
    }
}
