package com.example.bookstores.service;

import com.example.bookstores.model.Account;
import com.example.bookstores.repository.AccountRepositoryImpl;
import com.example.bookstores.repository.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountServiceImpl implements IAccountService {
    AccountRepositoryImpl repository = new AccountRepositoryImpl();

    @Override
    public Account checkLogin(String accountName, String accountPass) {
        return repository.checkLogin(accountName,accountPass);
    }

    @Override
    public boolean existedAccount(String accountName) {
        return repository.existedAccount(accountName);
    }

    @Override
    public void register(Account account) {
        repository.register(account);
    }

    @Override
    public Account findAccount(String accountName, String accountPass, int accountRole) {
        return repository.findAccount(accountName,accountPass,accountRole);
    }
}