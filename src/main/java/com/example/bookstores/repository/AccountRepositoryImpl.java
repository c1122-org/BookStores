package com.example.bookstores.repository;

import com.example.bookstores.model.Account;

import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountRepositoryImpl implements IAccountRepository{
    /**
     * Function: checkLogin
     * Create: AnhQN
     * Date create: 20/03/2023
     * @param nameAccount Account name of object
     *
     * @param passAccount Account password of object
     *
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public Account checkLogin(String nameAccount, String passAccount) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("select * from `account` where acc_name = ? and acc_pass = ?");
                statement.setString(1, nameAccount);
                statement.setString(2, passAccount);
                resultSet = statement.executeQuery();
                if (resultSet.next()) {
                    return new Account(nameAccount, passAccount, resultSet.getInt("acc_role"));
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
        return null;
    }
    /**
     * Function: existedAccount
     * Create: AnhQN
     * Date create: 20/03/2023
     * @param nameAccount Account name of object
     *
     * @throws SQLException
     * @throws RuntimeException
     */

    @Override
    public boolean existedAccount(String nameAccount) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("select * from `account` where acc_name = ?");
                statement.setString(1, nameAccount);
                resultSet = statement.executeQuery();
                if (resultSet.next()) {
                    return true;
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
        return false;
    }
    /**
     * Function: register
     * Create: AnhQN
     * Date create: 20/03/2023
     * @param account  Account of object
     *
     * @throws SQLException
     * @throws IOException
     */
    @Override
    public void register(Account account) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("insert into `account` values (?,?,?)");
                statement.setString(1,account.getNameAccount());
                statement.setString(2, account.getPassAccount());
                statement.setInt(3, account.getRoleAccount());
                statement.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
    }
    /**
     * Function: findAccount
     * Create: AnhQN
     * Date create: 20/03/2023
     * @param nameAccount Account name of object
     *
     * @param passAccount Account password of object
     *
     * @param roleAccount Account role of object
     *
     * @throws SQLException
     * @throws RuntimeException
     */
    @Override
    public Account findAccount(String nameAccount, String passAccount, int roleAccount) {
        Account account = null;
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            statement = connection.prepareStatement("select * from `account`");
            resultSet =statement.executeQuery();
            while (resultSet.next()){
                nameAccount = resultSet.getString("acc_name");
                passAccount = resultSet.getString("acc_pass");
                roleAccount = resultSet.getInt("acc_role");
                account = new Account(nameAccount,passAccount,roleAccount);
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }finally {
            try {
                resultSet.close();
                statement.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
            DBConnection.close();
        }
        return account;
    }
}
