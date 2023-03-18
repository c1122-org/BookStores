package com.example.bookstores.service;

import com.example.bookstores.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> displayAll();
    Customer findByID(int id);

    void updateByID(Customer customer);

    void create(String name,String date,String email,int gender,String nameAccount);
    List<Customer> sortByName();
    void deleteByID(int id);
}
