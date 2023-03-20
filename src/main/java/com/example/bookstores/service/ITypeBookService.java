package com.example.bookstores.service;

import com.example.bookstores.model.TypeBook;

import java.sql.SQLException;
import java.util.List;

public interface ITypeBookService {
    List<TypeBook> findAll();
    void create(TypeBook typeBook);
    TypeBook findByID(String id);
    void update(TypeBook typeBook);

}
