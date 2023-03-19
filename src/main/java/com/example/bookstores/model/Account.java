package com.example.bookstores.model;

public class Account {
    String nameAccount;
    String passAccount;
    int roleAccount;

    public Account() {
    }

    public Account(String nameAccount, String passAccount, int roleAccount) {
        this.nameAccount = nameAccount;
        this.passAccount = passAccount;
        this.roleAccount = roleAccount;
    }

    public String getNameAccount() {
        return nameAccount;
    }

    public void setNameAccount(String nameAccount) {
        this.nameAccount = nameAccount;
    }

    public String getPassAccount() {
        return passAccount;
    }

    public void setPassAccount(String passAccount) {
        this.passAccount = passAccount;
    }

    public int getRoleAccount() {
        return roleAccount;
    }

    public void setRoleAccount(int roleAccount) {
        this.roleAccount = roleAccount;
    }
}
