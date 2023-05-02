package com.family.family;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.family.service.CartService;
import com.family.service.OrderService;
import com.family.service.UserServiceImpl;
import com.family.model.Cart;
import com.family.model.Product;

@RestController
@RequestMapping("/api")
public class RestApi {
   
	@Autowired
	public CartService cartservice;
	
	@Autowired
	public UserServiceImpl userservice;
	
	@Autowired
	public OrderService orderservice;
	
	@RequestMapping({"cartdata/{id}","cartdata"})
	public List<Product> rest1(@PathVariable(value="id", required = false) String id)
	{   
	  	List<Cart> cart = cartservice.get_cart(Integer.parseInt(id));
	  	List<Product> products = new ArrayList<Product>();
	  	for(int i=0; i<cart.size(); i++)
	  	{
	  		products.add(userservice.getProduct(cart.get(i).getProduct_id()));
	  	}
	    return products; 
	}
	
	@RequestMapping("total-products")
	public int total_products()
	{
		return userservice.get_total_products();
	}
	
	@RequestMapping("total-customer")
	public int total_customers()
	{
		return userservice.get_total_customers();
	}
	
	@RequestMapping("total-orders")
	public int total_orders()
	{
		return orderservice.get_total_orders();
	}
	
	@RequestMapping("total-out-of-stock-products")
	public int total_out_of_stock_products()
	{
		return userservice.total_out_of_stock_products();
	}
	
}
