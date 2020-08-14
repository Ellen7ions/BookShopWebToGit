package com.langsin.service;

import com.langsin.beans.Book;
import com.langsin.beans.Page;
import com.langsin.dao.impl.BookDaoImpl;

public class PageService {
    private BookService bookService = new BookService();

    public PageService() {

    }

    public Page loadPage(int pageNum) {
        Page page = new Page();
        page.setPageNum(pageNum);
        page.setPageBooks(bookService.getBatch(pageNum));
        return page;
    }
}
