package com.langsin.beans;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
    private static final long serialVersionUID = 42L;

    private String name;
    private String email;
    private String pwd;
    private String privilege;
    private List<Book> historyBooks;

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", pwd='" + pwd + '\'' +
                ", privilege='" + privilege + '\'' +
                ", historyBooks=" + historyBooks +
                '}';
    }


    public String getPrivilege() {
        return privilege;
    }

    public void setPrivilege(String privilege) {
        this.privilege = privilege;
    }

    public User() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public List<Book> getHistoryBooks() {
        return historyBooks;
    }

    public void setHistoryBooks(List<Book> historyBooks) {
        this.historyBooks = historyBooks;
    }
}
