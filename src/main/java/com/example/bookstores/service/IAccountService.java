package com.example.bookstores.service;

import com.example.bookstores.model.Account;

public interface IAccountService {
    Account checkLogin(String accountName, String accountPass);
    boolean existedAccount(String accountName);
    void register(Account account);
    Account findAccount(String accountName, String accountPass, int accountRole);
}
