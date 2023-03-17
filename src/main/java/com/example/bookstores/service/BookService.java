package com.example.bookstores.service;

import com.example.bookstores.model.Book;
import com.example.bookstores.model.Category;
import com.example.bookstores.repository.BookRepository;
import com.example.bookstores.repository.IBookRepository;

import java.sql.SQLException;
import java.util.List;

/**
 * search (name)
 * findAll
 * findByID
 * save
 * update
 * delete
 */
public class BookService implements IBookService {
    private IBookRepository iBookRepository = new BookRepository();

    @Override
    public List<Book> findAll(String name) throws SQLException {
        if (name == null) {
            name = "";
        }
        return iBookRepository.findAll(name);
    }

    @Override
    public void save(Book book) throws SQLException {
        iBookRepository.save(book);
    }

    @Override
    public Book findById(int id) throws SQLException {
        return iBookRepository.findById(id);
    }

    @Override
    public void updateBook(int id, Book book) throws SQLException {
        iBookRepository.updateBook(id, book);
    }

    @Override
    public boolean deleteBook(int id) {
        return iBookRepository.deleteBook(id);
    }

    @Override
    public List<Category> categoryList() throws SQLException {
        return iBookRepository.categoryList();
    }
}
