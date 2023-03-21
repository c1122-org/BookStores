package com.example.bookstores.repository;

import com.example.bookstores.model.Customer;
import com.example.bookstores.model.TypeBook;

import java.sql.SQLException;
import java.util.List;

public interface ITypeBookRepository {
    List<TypeBook> findAll();
    void create(TypeBook typeBook);
    void update(TypeBook typeBook);
    TypeBook findByID(String id);
    List<TypeBook> findByName(String name);
}
