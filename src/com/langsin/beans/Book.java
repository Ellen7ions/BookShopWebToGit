package com.langsin.beans;

import java.io.Serializable;

public class Book implements Serializable {
    private static final long serialVersionUID = 42L;
    private String name;
    private String img;
    private Double price;
    private Integer left;
    private String id;
    private Integer hasBought;

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                ", left=" + left +
                ", id='" + id + '\'' +
                ", hasBought=" + hasBought +
                ", sell=" + sell +
                '}';
    }

    public Integer getHasBought() {
        return hasBought;
    }

    public void setHasBought(Integer hasBought) {
        this.hasBought = hasBought;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private Integer sell;

    public Book() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getLeft() {
        return left;
    }

    public void setLeft(Integer left) {
        this.left = left;
    }

    public Integer getSell() {
        return sell;
    }

    public void setSell(Integer sell) {
        this.sell = sell;
    }
}
