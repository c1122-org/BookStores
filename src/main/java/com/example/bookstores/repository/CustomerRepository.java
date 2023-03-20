package com.example.bookstores.repository;

import com.example.bookstores.model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    /**
     * searchByName(String name)
     * Search for objects with the same name as the parameter passed in
     *
     * @param name is the name passed to search
     * @return Returns a list containing objects with the same name as the parameter passed
     * @author MinhNV
     * @since 2023/03/17
     */
    public List<Customer> searchByName(String name) {
        List<Customer> customerList = displayAll();
        List<Customer> customerList1 = new ArrayList<>();
        for (Customer customer : customerList) {
            if (customer.getName().toLowerCase().contains(name.toLowerCase())) {
                customerList1.add(customer);
            }
        }
        return customerList1;
    }


    /**
     * displayAll() get all the objects in the customer table
     *
     * @return Returns a list containing all the objects in the customers table
     * @author MinhNV
     * @since 2023/03/17
     */
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
                    list.add(customer);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
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

    /**
     * findByID(int id) search for object with id by passing parameter
     *
     * @param id is the code passed to search
     * @return Returns an object whose id is passed as a parameter
     * @author MinhNV
     * @since 2023/03/17
     */
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

    /**
     * updateByID(Customer customer) Update customer information
     *
     * @param customer objects that need updating information
     * @author MinhNV
     * @since 2023/03/18
     */
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
            }
        }
    }

    /**
     * public void create(String name, String date, String email, int gender, String nameAccount)
     * create new object
     *
     * @param name name of object
     * @param date date of birth of object
     * @param email email of object
     * @param gender gender of object
     * @param nameAccount name account of object
     *
     * @author MinhNV
     * @since 2023/03/18
     */
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

    /**
     * public List<Customer> sortByName()
     * sort objects by name
     *
     * @return Returns a list of objects sorted by name
     * @author MinhNV
     * @since 2023/03/18
     */
    public List<Customer> sortByName() {
        List<Customer> list = displayAll();
        Collections.sort(list);
        return list;
    }

    /**
     * public void deleteByID(int id)
     * delete object by id passed in
     * @param id is the id of the object to be deleted
     *
     * @author MinhNV
     * @since 2023/03/18
     */
    @Override
    public void deleteByID(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("delete from customer where cus_id=?");
                statement.setInt(1, id);
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
}

