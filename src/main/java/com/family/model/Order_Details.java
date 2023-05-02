package com.family.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "Order_Details")
public class Order_Details {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	 private int id;
	 private int order_id;
	 private int product_id;
	 private int product_price;
	public Order_Details() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order_Details(int id, int order_id, int product_id, int product_price) {
		super();
		this.id = id;
		this.order_id = order_id;
		this.product_id = product_id;
		this.product_price = product_price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	 
	
}
