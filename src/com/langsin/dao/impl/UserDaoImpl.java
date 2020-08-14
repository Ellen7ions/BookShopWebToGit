package com.langsin.dao.impl;

import com.langsin.beans.Book;
import com.langsin.beans.User;
import com.langsin.dao.basicdao.*;
import com.langsin.utils.JDBCUtils;

import java.sql.SQLException;


public class UserDaoImpl extends AbstractDao<User> {
    public UserDaoImpl() {
        connection = JDBCUtils.getConnection();
    }

    @Override
    public void add(User user) {
        String sql = "INSERT INTO user VALUES (null, ?, ?, ?, ?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPwd());
            preparedStatement.setString(4, user.getPrivilege());
            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void delete(String email) {
        String sql = "DELETE FROM user WHERE user_email=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public User query(String email) {
        String sql = "SELECT * FROM user WHERE user_email=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            User user = new User();
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user.setName(resultSet.getString("user_name"));
                user.setEmail(resultSet.getString("user_email"));
                user.setPwd(resultSet.getString("user_pwd"));
                user.setPrivilege(resultSet.getString("user_privilege"));
                return user;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(User user) {
        String sql = "UPDATE user SET user_name=?, user_pwd=?, user_privilege=? WHERE user_email=?;";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getPwd());
            preparedStatement.setString(3, user.getPrivilege());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.execute();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
