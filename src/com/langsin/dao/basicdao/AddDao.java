package com.langsin.dao.basicdao;

import com.langsin.beans.Book;

public interface AddDao<T> {
    void add(T bid);
}
