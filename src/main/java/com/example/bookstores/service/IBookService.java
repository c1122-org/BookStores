package com.example.bookstores.service;

import com.example.bookstores.model.Book;
import com.example.bookstores.model.Category;

import java.sql.SQLException;
import java.util.List;

public interface IBookService {
    List<Book> findAll(String name) throws SQLException;

    void save(Book book) throws SQLException;

    Book findById(int id) throws SQLException;

    void updateBook(int id, Book book) throws SQLException;

    boolean deleteBook(int id);
void RemoveSpecialCharacter();
    List<Category> categoryList() throws SQLException;
}
