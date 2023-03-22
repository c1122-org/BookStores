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

    @Override
    public void create(TypeBook typeBook) {
        iTypeBookRepository.create(typeBook);
    }

    @Override
    public TypeBook findByID(String id) {
        return iTypeBookRepository.findByID(id);
    }

    @Override
    public void update(TypeBook typeBook) {
        iTypeBookRepository.update(typeBook);
    }

    @Override
    public List<TypeBook> findByName(String name) {
        return iTypeBookRepository.findByName(name);
    }

    @Override
    public void deleteByID(String categoryId) {
        iTypeBookRepository.deleteByID(categoryId);
    }
}
