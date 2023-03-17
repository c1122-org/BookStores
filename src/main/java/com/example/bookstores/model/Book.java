package com.example.bookstores.model;

public class Book {
    private Integer id;
    private String nameBook;
    private Double price;
    private String author;
    private String publishingCompany;
    private String publisher;
    private String translator;
    private String describes;
    private String image;
    private Category category;

    public Book(Integer id, String nameBook, Double price, String author, String publishingCompany, String publisher, String translator, String describes, String image, Category category) {
        this.id = id;
        this.nameBook = nameBook;
        this.price = price;
        this.author = author;
        this.publishingCompany = publishingCompany;
        this.publisher = publisher;
        this.translator = translator;
        this.describes = describes;
        this.image = image;
        this.category = category;
    }

    public Book(String nameBook, Double price, String author, String publishingCompany, String publisher, String translator, String describes, String image, Category category) {
        this.nameBook = nameBook;
        this.price = price;
        this.author = author;
        this.publishingCompany = publishingCompany;
        this.publisher = publisher;
        this.translator = translator;
        this.describes = describes;
        this.image = image;
        this.category = category;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNameBook() {
        return nameBook;
    }

    public void setNameBook(String nameBook) {
        this.nameBook = nameBook;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublishingCompany() {
        return publishingCompany;
    }

    public void setPublishingCompany(String publishingCompany) {
        this.publishingCompany = publishingCompany;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getTranslator() {
        return translator;
    }

    public void setTranslator(String translator) {
        this.translator = translator;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
