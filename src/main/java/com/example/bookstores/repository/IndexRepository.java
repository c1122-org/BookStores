package com.example.bookstores.repository;

import com.example.bookstores.model.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IndexRepository implements IIndexRepository {
    @Override
    public List<Book> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Book> bookList = new ArrayList<>();
        Book book = null;
        try {
            statement = connection.prepareStatement("SELECT book_name,book_price,image FROM book_store.books");
            resultSet = statement.executeQuery();
            while (resultSet.next()){
                String nameBook = resultSet.getString("book_name");
                Double price = resultSet.getDouble("book_price");
                String image = resultSet.getString("image");
                book = new Book(nameBook,price,image);
                bookList.add(book);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                statement.close();
                resultSet.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            DBConnection.close();
        }
        return bookList;
    }
}
