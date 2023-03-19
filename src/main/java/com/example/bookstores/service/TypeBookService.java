package com.example.bookstores.service;

import com.example.bookstores.model.TypeBook;
import com.example.bookstores.repository.ITypeBookRepository;
import com.example.bookstores.repository.TypeBookRepository;

import java.sql.SQLException;
import java.util.List;

public class TypeBookService implements ITypeBookService{
    ITypeBookRepository iTypeBookRepository = new TypeBookRepository();
    @Override
    public List<TypeBook> findAll() {
        return iTypeBookRepository.findAll();
    }
}
