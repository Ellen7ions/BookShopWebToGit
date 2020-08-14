package com.langsin.beans;

import java.util.List;

public class Page {
    private Integer pageNum;
    private List<Book> pageBooks;

    public Page() {

    }

    @Override
    public String toString() {
        return "Page{" +
                "pageNum=" + pageNum +
                ", pageBooks=" + pageBooks +
                '}';
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public List<Book> getPageBooks() {
        return pageBooks;
    }

    public void setPageBooks(List<Book> pageBooks) {
        this.pageBooks = pageBooks;
    }
}
