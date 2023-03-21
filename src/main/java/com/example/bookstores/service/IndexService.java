package com.example.bookstores.service;

import com.example.bookstores.model.Book;

import java.util.List;

public class IndexService implements IIndexService{
    IIndexService iIndexService = new IndexService();
    @Override
    public List<Book> findAll() {
        return iIndexService.findAll();
    }
}
