package com.langsin.service;

import com.langsin.beans.Book;
import com.langsin.beans.User;
import com.langsin.dao.basicdao.AddDao;
import com.langsin.dao.basicdao.QueryDao;
import com.langsin.dao.impl.BookDaoImpl;
import com.langsin.dao.impl.UserDaoImpl;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    private final UserDaoImpl userDao = new UserDaoImpl();

    public UserService() {

    }

    public User updateUser(String name, String email, String password) {
        User user = userDao.query(email);
        user.setName(name);
        if (password != null && !password.equals("")) {
            user.setPwd(password);
        }
        userDao.update(user);
        return user;
    }

    public boolean login(User user) {
        User db = userDao.query(user.getEmail());
        userDao.close();
        if (db == null) {
            return false;
        } else if (db.getPwd().equals(user.getPwd())) {
            return true;
        }
        return false;
    }

    public boolean register(User user) {
        User db = userDao.query(user.getEmail());
        if (db == null) {
            userDao.add(user);
            userDao.close();
            return true;
        }
        userDao.close();
        return false;
    }

    public void addBookToUser(User user, Book book) {
        List<Book> historyBooks = user.getHistoryBooks();
        historyBooks.add(book);
    }

}
