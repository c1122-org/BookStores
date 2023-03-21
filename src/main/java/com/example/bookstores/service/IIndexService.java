package com.example.bookstores.service;

import com.example.bookstores.model.Book;

import java.util.List;

public interface IIndexService {
    List<Book> findAll();
}
