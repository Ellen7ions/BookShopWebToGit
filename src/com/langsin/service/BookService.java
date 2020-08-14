package com.langsin.service;

import com.langsin.beans.Book;
import com.langsin.beans.User;
import com.langsin.dao.impl.BookDaoImpl;

import java.util.ArrayList;
import java.util.List;

public class BookService {
    private BookDaoImpl bookDao;
    private List<Book> bookList;


    public BookService() {
        bookDao = new BookDaoImpl();
        bookList = bookDao.getAll();
    }

    public void bookInfoChange(String id, String left, String price) {
        Book book = bookDao.query(id);
        book.setLeft(Integer.parseInt(left));
        book.setPrice(Double.parseDouble(price));
        updateBook(book);
    }

    public boolean buyBook(User user, String id, int amount) {
        Book book = bookDao.query(id);
        book.setLeft(book.getLeft() - amount);
        book.setSell(book.getSell() + amount);
        updateBook(book);
        book.setHasBought(amount);
        if (user.getHistoryBooks() == null) {
            user.setHistoryBooks(new ArrayList<Book>());
        }
        user.getHistoryBooks().add(book);
        System.out.println(user.getHistoryBooks());
        return true;
    }

    public boolean addBook(Book book) {
        Book db = bookDao.query(book.getId());
        if (db != null) {
            return false;
        }
        bookDao.add(book);
        return true;
    }

    public boolean removeBook(Book book) {
        Book db = bookDao.query(book.getId());
        if (db == null) {
            return false;
        }
        bookDao.delete(book.getId());
        return true;
    }

    public boolean updateBook(Book book) {
        Book db = bookDao.query(book.getId());
        if (db == null) {
            return false;
        }
        bookDao.update(book);
        return true;
    }

    public List<Book> getBatch(int batchCnt) {
        batchCnt -= 1;
        List<Book> result = new ArrayList<>();
        int end = Math.min(batchCnt * 12 + 12, bookList.size());
        for (int i = batchCnt * 12;i < end; i++)
            result.add(bookList.get(i));
        return result;
    }

    public boolean checkFull(int batchCnt) {
        System.out.println("into checkFull");
        return batchCnt * 12 > bookList.size();
    }

}
