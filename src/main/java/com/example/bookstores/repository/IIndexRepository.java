package com.example.bookstores.repository;

import com.example.bookstores.model.Book;
import com.example.bookstores.model.TypeBook;

import java.util.List;

public interface IIndexRepository {
    List<Book> findAll();
}
