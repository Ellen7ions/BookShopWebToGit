package com.langsin.dao.basicdao;

import com.langsin.beans.Book;

public interface UpdateDao<T> {
    void update(T book);
}
