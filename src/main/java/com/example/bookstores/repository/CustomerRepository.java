package com.example.bookstores.repository;

import com.example.bookstores.model.Customer;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRepository implements ICustomerRepository{
    public List<Customer> displayAll(){
        Connection connection=DBConnection.getConnection();
        PreparedStatement statement=null;
        ResultSet resultSet=null;
        List<Customer> list=new ArrayList<>();
        Customer customer=null;
        if (connection!=null){
            try{
                statement=connection.prepareStatement("select *from customer");
                resultSet=statement.executeQuery();
                while (resultSet.next()){
                    String name=resultSet.getString("cus_name");
                    String email=resultSet.getString("cus_email");
                    Date date_of_birth=resultSet.getDate("cus_date_of_birth");
                    int gender=resultSet.getInt("cus_gender");
                    String nameAccount=resultSet.getString("acc_name");
                    customer=new Customer(name,date_of_birth,email,gender,nameAccount);
=======
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    public List<Customer> displayAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Customer> list = new ArrayList<>();
        Customer customer = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("select *from customer");
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("cus_id");
                    String name = resultSet.getString("cus_name");
                    String email = resultSet.getString("cus_email");
                    String dateOfBirth = resultSet.getString("cus_date_of_birth");
                    int gender = resultSet.getInt("cus_gender");
                    String nameAccount = resultSet.getString("acc_name");
                    customer = new Customer(id, name, dateOfBirth, email, gender, nameAccount);
>>>>>>> 86d76cd688cc4a0a6b8ab00ba9779bec7fce1a41
                    list.add(customer);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
<<<<<<< HEAD
            }finally {
=======
            } finally {
>>>>>>> 86d76cd688cc4a0a6b8ab00ba9779bec7fce1a41
                try {
                    resultSet.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
<<<<<<< HEAD
=======
            }
        }
        return list;
    }

    @Override
    public Customer findByID(int id) {
        List<Customer> customerList = displayAll();
        for (Customer customer : customerList) {
            if (customer.getId() == id) {
                return customer;
            }
        }
        return null;
    }

    @Override
    public void updateByID(Customer customer) {
        Connection connection = DBConnection.getConnection();
        CallableStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareCall("call update_customer_by_id(?,?,?,?,?)");
                statement.setInt(1, customer.getId());
                statement.setString(2, customer.getName());
                statement.setString(3, customer.getEmail());
                statement.setString(4, customer.getDateOfBirth());
                statement.setInt(5, customer.getGender());
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
>>>>>>> 86d76cd688cc4a0a6b8ab00ba9779bec7fce1a41
            }
        }
        return list;
    }
<<<<<<< HEAD
}
=======

    @Override
    public void create(String name, String date, String email, int gender, String nameAccount) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("insert into customer(cus_name,cus_email,cus_date_of_birth,cus_gender,acc_name) value(?,?,?,?,?)");
                statement.setString(1, name);
                statement.setString(2, date);
                statement.setString(3, email);
                statement.setInt(4, gender);
                statement.setString(5, nameAccount);
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

    public void deleteByID(int id) {

    }

    public List<Customer> sortByName() {
        List<Customer> list = displayAll();
        Collections.sort(list);
        return list;
    }
}
>>>>>>> 86d76cd688cc4a0a6b8ab00ba9779bec7fce1a41
