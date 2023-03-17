package com.example.bookstores.repository;

import com.example.bookstores.model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> displayAll();

    Customer findByID(int id);

    void updateByID(Customer customer);

    void create(String name,String date,String email,int gender,String nameAccount);
    List<Customer> sortByName();
}
