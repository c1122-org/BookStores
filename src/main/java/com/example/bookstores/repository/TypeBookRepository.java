package com.example.bookstores.repository;

import com.example.bookstores.model.TypeBook;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TypeBookRepository implements ITypeBookRepository {
    public List<TypeBook> findByName(String name) {
        List<TypeBook> list = findAll();
        List<TypeBook> list1 = new ArrayList<>();
        for (TypeBook typeBook : list) {
            if (typeBook.getCategoryName().toLowerCase().contains(name.toLowerCase())) {
                list1.add(typeBook);
            }
        }
        return list1;
    }

    @Override
    public List<TypeBook> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<TypeBook> typeBooks = new ArrayList<>();
        TypeBook typeBook = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("SELECT * FROM book_store.category");
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    String categoryId = resultSet.getString("category_id");
                    String categoryName = resultSet.getString("category_name");
                    typeBook = new TypeBook(categoryId, categoryName);
                    typeBooks.add(typeBook);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
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

    @Override
    public void create(TypeBook typeBook) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("INSERT INTO category(category_id, category_name) VALUES (?, ?)");
            statement.setString(1, typeBook.getCategoryId());
            statement.setString(2, typeBook.getCategoryName());
            statement.executeUpdate();
            DBConnection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(TypeBook typeBook) {
        Connection connection = DBConnection.getConnection();
        CallableStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareCall("call update_category(?,?)");
                statement.setString(1, typeBook.getCategoryId());
                statement.setString(2, typeBook.getCategoryName());
                statement.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    statement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
    }

    @Override
    public TypeBook findByID(String id) {
        List<TypeBook> list = findAll();
        for (TypeBook book : list) {
            if (book.getCategoryId().equals(id)) {
                return book;
            }
        }
        return null;
    }
}
