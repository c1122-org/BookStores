package com.example.bookstores.repository;

import com.example.bookstores.model.Book;
import com.example.bookstores.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * search(name)
 * findAll
 * findByID
 * save
 * update
 * delete
 */
public class BookRepository implements IBookRepository {
    private static List<Book> bookList = new ArrayList<>();
    private static final String INSERT_BOOK_SQL = "insert into books(book_name,book_price,book_author,publishing_company,publisher,translator,describes,image,category_id) values (?,?,?,?,?,?,?,?,?)";
    private static final String SELECT_BY_ID = "select books.book_id,books.book_name,books.book_price,books.book_author,books.publishing_company,books.publisher,books.translator,books.describes,books.image,books.category_id,category.category_id, category.category_name\n" +
            "from books \n" +
            "left join category on category.category_id = books.category_id where book_id = ?";
    private static final String UPDATE_BOOK_SQL = "update books set book_name=?,book_price=?,book_author=?,publishing_company=?,publisher=?,translator=?,describes=?,image=?,category_id=? where book_id=?";
    private final String DELETE_BOOK = "delete from books where book_id = ?";

    /**
     * Function: Show list of books + Search by name
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param name
     * @return bookList2
     * @throws SQLException
     */
    @Override
    public List<Book> findAll(String name) throws SQLException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Book> bookList2 = new ArrayList<>();
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement("select books.book_id,books.book_name,books.book_price,books.book_author,books.publishing_company,books.publisher,books.translator,books.describes,books.image,books.category_id,category.category_id, category.category_name\n" +
                        "from books \n" +
                        "left join category on category.category_id = books.category_id where book_name like concat('%',?,'%')");

                preparedStatement.setString(1, name);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("book_id");
                    //id chưa sử dụng, lúc nãy chỗ id này chưa sáng
                    String nameBook = resultSet.getString("book_name");
                    Double price = resultSet.getDouble("book_price");
                    String author = resultSet.getString("book_author");
                    String publishingCompany = resultSet.getString("publishing_company");
                    String publisher = resultSet.getString("publisher");
                    String translator = resultSet.getString("translator");
                    String describes = resultSet.getString("describes");
                    String image = resultSet.getString("image");
                    int idCategory = resultSet.getInt("category_id");
                    String nameCategory = resultSet.getString("category_name");
                    Category category = new Category(idCategory, nameCategory);
                    bookList2.add(new Book(id,nameBook, price, author, publishingCompany, publisher, translator, describes, image, category));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return bookList2;
    }

    /**
     * Function: Save books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param book
     * @throws SQLException
     */
    @Override
    public void save(Book book) throws SQLException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_SQL);
        preparedStatement.setString(1, book.getNameBook());
        preparedStatement.setDouble(2, book.getPrice());
        preparedStatement.setString(3, book.getAuthor());
        preparedStatement.setString(4, book.getPublishingCompany());
        preparedStatement.setString(5, book.getPublisher());
        preparedStatement.setString(6, book.getTranslator());
        preparedStatement.setString(7, book.getDescribes());
        preparedStatement.setString(8, book.getImage());
        preparedStatement.setInt(9, book.getCategory().getIdCategory());
        preparedStatement.executeUpdate();

    }

    /**
     * Function: Find by id
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param id
     * @return null
     * @throws SQLException
     */
    @Override
    public Book findById (int id) throws SQLException {
        PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement(SELECT_BY_ID);
        preparedStatement.setInt(1,id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            String nameBook = resultSet.getString("book_name");
            Double price = resultSet.getDouble("book_price");
            String author = resultSet.getString("book_author");
            String publishingCompany = resultSet.getString("publishing_company");
            String publisher = resultSet.getString("publisher");
            String translator = resultSet.getString("translator");
            String describes = resultSet.getString("describes");
            String image = resultSet.getString("image");
            int idCategory = resultSet.getInt("category_id");
            String nameCategory = resultSet.getString("category_name");
            Category category = new Category(idCategory, nameCategory);
            Book book = new Book(nameBook, price, author, publishingCompany, publisher, translator, describes, image, category);
            return book;
        }
        return null;
    }

    /**
     * Function: Update books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param id
     * @param book
     * @throws SQLException
     */
    @Override
    public void updateBook(int id, Book book) throws SQLException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(UPDATE_BOOK_SQL);
                preparedStatement.setString(1, book.getNameBook());
                preparedStatement.setDouble(2, book.getPrice());
                preparedStatement.setString(3, book.getAuthor());
                preparedStatement.setString(4, book.getPublishingCompany());
                preparedStatement.setString(5, book.getPublisher());
                preparedStatement.setString(6, book.getTranslator());
                preparedStatement.setString(7, book.getDescribes());
                preparedStatement.setString(8, book.getImage());
                preparedStatement.setInt(9, book.getCategory().getIdCategory());
                preparedStatement.setInt(10,id);

                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /**
     * Function: Delete books
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @param id
     * @return false
     */
    @Override
    public boolean deleteBook(int id) {
        Connection connection = DBConnection.getConnection();
        if (connection != null) {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BOOK);
                preparedStatement.setInt(1, id);
                preparedStatement.executeUpdate();
                return preparedStatement.executeUpdate() > 0;
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }
        return false;
    }

    /**
     * Function: List category
     * Create: QuynhNH
     * Date create: 17/03/2023
     * @return categoryList
     * @throws SQLException
     */
    @Override
    public List<Category> categoryList() throws SQLException {
        List<Category> categoryList = new ArrayList<>();
        PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("select * from category");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int idCategory = resultSet.getInt(1);
            String nameCategory = resultSet.getString(2);
            Category category = new Category(idCategory, nameCategory);
            categoryList.add(category);
        }
        return categoryList;
    }

}
