package com.example.bookstores.repository;

import com.example.bookstores.model.TypeBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeBookRepository implements ITypeBookRepository{
    @Override
    public List<TypeBook> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<TypeBook> typeBooks = new ArrayList<>();
        TypeBook typeBook = null;
        if(connection!= null){
            try {
                statement = connection.prepareStatement("SELECT * FROM book_store.category");
                resultSet = statement.executeQuery();
                while (resultSet.next()){
                    String categoryId = resultSet.getString("category_id");
                    String categoryName = resultSet.getString("category_name");
                    typeBook = new TypeBook(categoryId,categoryName);
                    typeBooks.add(typeBook);
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
        }
        return typeBooks;
    }
}
