package com.example.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "inventory")
public class Inventory {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int id;
    @Column(name = "description")
    public String description;
    @Column(name = "price")
    public float price;
    @Column(name = "color")
    public String color;


    public Inventory() {

    }


    public Inventory(int id, String description, float price, String color) {
        this.id = id;
        this.description = description;
        this.price = price;
        this.color = color;

    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }


}