package com.family.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "Cart")
public class Cart {
    
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int cart_id;
	private int product_id;
	private int product_quantity;
	 
	
	public Cart() {
		super();
	}

	

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public Cart(int id, int cart_id, int product_id, int product_quantity) {
		super();
		this.id = id;
		this.cart_id = cart_id;
		this.product_id = product_id;
		this.product_quantity = product_quantity;
	}



	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getProduct_quantity() {
		return product_quantity;
	}

	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
	

   
}
