package com.langsin.dao.basicdao;

import com.langsin.beans.Book;

public interface QueryDao<T> {
    T query(String id);
}
