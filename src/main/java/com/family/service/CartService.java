package com.family.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.family.DAO.CartCrud;
import com.family.model.Cart;

@Service
@Component
public class CartService {

	@Autowired
	private CartCrud cartcrud;
	
	public void save_cart(Cart cart)
	{
		cartcrud.save_cart(cart);
	}
	
	public List<Cart> get_cart(int customer_id)
	{
		return cartcrud.get_cart(customer_id);
	}
	
	public Cart get_cart(int customer_id,int product_id)
	{
		return cartcrud.get_cart(customer_id, product_id);
	}
	
	public void update_cart(Cart card)
	{
		cartcrud.update_cart(card);
	}

	public void remove_product(int customer_id, int product_Id) {
		
		cartcrud.remove_product(customer_id, product_Id);
	}

	public void delete_cart(int customer_id) {
	 
		cartcrud.delete_products(customer_id);
		
	}
}
