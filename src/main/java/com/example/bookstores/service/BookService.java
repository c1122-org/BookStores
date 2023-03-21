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

    /**
     * Function: Find all by name
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param name
     * @return name
     * @throws SQLException
     */
    @Override
    public List<Book> findAll(String name) throws SQLException {
        if (name == null) {
            name = "";
        }
        return iBookRepository.findAll(name);
    }

    /**
     * Function: Save books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param book
     * @throws SQLException
     */
    @Override
    public void save(Book book) throws SQLException {

        iBookRepository.save(book);
    }

    /**
     * Function: find by id
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param id
     * @return id
     * @throws SQLException
     */
    @Override
    public Book findById(int id) throws SQLException {
        return iBookRepository.findById(id);
    }

    /**
     * Function: update book
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param id
     * @param book
     * @throws SQLException
     */
    @Override
    public void updateBook(int id, Book book) throws SQLException {
        iBookRepository.updateBook(id, book);
    }

    /**
     * Function: Delete books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param id
     * @return id
     */
    @Override
    public boolean deleteBook(int id) {
        return iBookRepository.deleteBook(id);
    }

    @Override
    public void RemoveSpecialCharacter() {
        String str=null;
         str = str.replaceAll(" \" || ” || “ ","&quot;");

    }

    /**
     * Function: Category list
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @return: category list
     * @throws SQLException
     */
    @Override
    public List<Category> categoryList() throws SQLException {
        return iBookRepository.categoryList();
    }
}
