package com.langsin.dao.impl;

import com.langsin.beans.Book;
import com.langsin.dao.basicdao.*;
import com.langsin.utils.JDBCUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDaoImpl extends AbstractDao<Book> {

    public static void main(String[] args) {
        Book bo = new Book();
        bo.setSell(1);
        bo.setLeft(1);
        bo.setName("歪比歪比？歪比巴布");
        bo.setPrice(12.4);
        bo.setImg("http://baidu.com");
        bo.setId("243");
        new BookDaoImpl().update(bo);
    }

    public BookDaoImpl() {
        connection = JDBCUtils.getConnection();
    }


    public List<Book> getAll() {
        List<Book> bookList = new ArrayList<>();
        String sql = "SELECT * FROM book;";
        try {
            preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Book book = new Book();
                book.setImg(resultSet.getString(2));
                book.setPrice(resultSet.getDouble(3));
                book.setName(resultSet.getString(4));
                book.setSell(resultSet.getInt(5));
                book.setLeft(resultSet.getInt(6));
                book.setId(resultSet.getString(7));
                bookList.add(book);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return bookList;
    }


    @Override
    public void add(Book book) {
        String sql = "INSERT INTO book VALUES (null, ?, ?, ?, ?, ?, ?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, book.getImg());
            preparedStatement.setDouble(2, book.getPrice());
            preparedStatement.setString(3, book.getName());
            preparedStatement.setInt(4, book.getSell());
            preparedStatement.setInt(5, book.getLeft());
            preparedStatement.setString(6, book.getId());
            preparedStatement.execute();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void update(Book book) {
        String sql = "UPDATE book SET book_img=?, book_price=?, book_name=?, book_sell=?, book_left=? WHERE id=" + book.getId() + ";";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, book.getImg());
            preparedStatement.setDouble(2, book.getPrice());
            preparedStatement.setString(3, book.getName());
            preparedStatement.setInt(4, book.getSell());
            preparedStatement.setInt(5, book.getLeft());
            preparedStatement.execute();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void delete(String id) {
        String sql = "DELETE FROM book WHERE id=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, id);
            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Book query(String id) {
        String sql = "SELECT * from book where id=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, id);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();
            Book book = new Book();
            book.setId(resultSet.getString("id"));
            book.setImg(resultSet.getString("book_img"));
            book.setPrice(resultSet.getDouble("book_price"));
            book.setName(resultSet.getString("book_name"));
            book.setLeft(resultSet.getInt("book_left"));
            book.setSell(resultSet.getInt("book_sell"));
            return book;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
