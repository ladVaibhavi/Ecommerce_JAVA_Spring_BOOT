package com.family.model;

import java.util.Arrays;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "Product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String description;
	private String available_in;
	private String catagory;
	private int price;
	private int discount;
	private int quantity;
	@Lob
	private String image;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int id, String name, String description, String available_in, String catagory, int price,
			int discount, int quantity, String image) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.available_in = available_in;
		this.catagory = catagory;
		this.price = price;
		this.discount = discount;
		this.quantity = quantity;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAvailable_in() {
		return available_in;
	}
	public void setAvailable_in(String available_in) {
		this.available_in = available_in;
	}
	public String getCatagory() {
		return catagory;
	}
	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", available_in="
				+ available_in + ", catagory=" + catagory + ", price=" + price + ", discount=" + discount
				+ ", quantity=" + quantity + ", image=" + image + "]";
	}
	
	
	
}
