package com.example.bookstores.repository;

import com.example.bookstores.model.Customer;

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
                    list.add(customer);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    resultSet.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return list;
    }
}