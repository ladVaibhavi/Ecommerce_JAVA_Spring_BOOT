package com.family.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.family.DAO.Ordercrud;
import com.family.model.Order;
import com.family.model.Order_Details;

@Service
@Component
public class OrderService {

	@Autowired
	private Ordercrud ordercrud;
	
	public void save_order(Order order) {
	  
		ordercrud.save_order(order);
	}
	
	public void update_order(Order order) {
		  
		ordercrud.update_order(order);
	}

	public void save_order_details(Order_Details order_details) {
		ordercrud.save_order_details(order_details);
		
	}

	public  List<Order> get_orders(int customer_id) {
		return ordercrud.get_orders(customer_id);
	}

	public int get_total_orders() {
		
		return ordercrud.get_total_orders();
	}

}
