package com.example.bookstores.service;

import com.example.bookstores.model.Customer;
import com.example.bookstores.repository.CustomerRepository;
import com.example.bookstores.repository.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService{
    ICustomerRepository customerRepository=new CustomerRepository();
    @Override
    public List<Customer> displayAll() {
        return customerRepository.displayAll();
    }

    @Override
    public Customer findByID(int id) {
        return customerRepository.findByID(id);
    }

    @Override
    public void updateByID(Customer customer) {
        customerRepository.updateByID(customer);
    }

}
