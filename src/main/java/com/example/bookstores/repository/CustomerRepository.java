package com.example.bookstores.repository;

import com.example.bookstores.model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class CustomerRepository implements ICustomerRepository{
public List<Customer> displayAll(){
    Connection connection=DBConnection.getConnection();
    PreparedStatement statement=null;
    ResultSet resultSet=null;
    if (connection!=null){
        try{
            statement=connection.prepareStatement("select *from customer");
            resultSet=statement.executeQuery();
            while (resultSet.next()){
                String name=resultSet.getString("cus_name");
                String email=resultSet.getString("cus_email");
                Date date_of_birth=resultSet.getDate("cus_date_of_birth");
                int gender=resultSet.getInt("cus_gendle")
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    }
}
