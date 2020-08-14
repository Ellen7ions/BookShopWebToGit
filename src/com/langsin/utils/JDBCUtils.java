package com.langsin.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class JDBCUtils {

    public static Connection getConnection() {
        Properties properties = new Properties();
        try {
            properties.load(JDBCUtils.class.getResourceAsStream("prop.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class.forName(properties.getProperty("driver"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            return DriverManager.getConnection(
                    properties.getProperty("db"),
                    properties.getProperty("name"),
                    properties.getProperty("pwd")
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
