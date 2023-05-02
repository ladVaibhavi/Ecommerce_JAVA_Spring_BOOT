package com.family.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "Address")
public class Address {
    
	@Id
	@GeneratedValue( strategy= GenerationType.AUTO)
	private int address_id;
	private int customer_id;
	private char address_type;
	private String country;
	private String state;
	private String city;
	private int pincode;
	private String address;
	
	public Address() {
		super();
	}

	public Address(int address_id, int customer_id, char address_type , String country, String state, String city, int pincode,
			String address) {
		super();
		this.address_id = address_id;
		this.customer_id = customer_id;
		this.address_type = address_type;
		this.country = country;
		this.state = state;
		this.city = city;
		this.pincode = pincode;
		this.address = address;
	}

	public int getAddress_id() {
		return address_id;
	}

	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	

	public char getAddress_type() {
		return address_type;
	}

	public void setAddress_type(char address_type) {
		this.address_type = address_type;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
}
