package com.example.bookstores.model;
public class Customer implements Comparable<Customer>{
    private int id;
    private String name;
    private String dateOfBirth;
    private String email;
    private int gender;
    private String nameAccount;

    public Customer() {
    }

    public Customer(int id,String name, String dateOfBirth, String email, int gender, String nameAccount) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.gender = gender;
        this.nameAccount = nameAccount;
        this.id=id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
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

    @Override
    public int compareTo(Customer o) {
        return this.name.compareTo(o.name);
    }
}

