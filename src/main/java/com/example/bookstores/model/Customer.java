package com.example.bookstores.model;

import java.util.Date;

public class Customer {
    String name;
    Date dateOfBirth;
    String email;
    int gender;
    String nameAccount;

    public Customer() {
    }

    public Customer(String name, Date dateOfBirth, String email, int gender, String nameAccount) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.gender = gender;
        this.nameAccount = nameAccount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getNameAccount() {
        return nameAccount;
    }

    public void setNameAccount(String nameAccount) {
        this.nameAccount = nameAccount;
    }
}
