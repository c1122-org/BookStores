package com.example.bookstores.repository;

import com.example.bookstores.model.TypeBook;

import java.sql.SQLException;
import java.util.List;

public interface ITypeBookRepository {
    List<TypeBook> findAll();
}
