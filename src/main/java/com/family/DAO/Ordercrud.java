package com.family.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.family.model.Order;
import com.family.model.Order_Details;
import com.family.model.Product;

@Repository
@Transactional
public class Ordercrud {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void save_order(Order order) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(order);
	}

	@Transactional
	public void update_order(Order order) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(order);
	}

	@Transactional
	public void save_order_details(Order_Details order_details) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(order_details);
	}

	@SuppressWarnings("unchecked")
	public List<Order> get_orders(int customer_id) {

		Session session = this.sessionFactory.getCurrentSession();
		Query<Order> query = session.createQuery("from Order where customer_id = '" + customer_id + "' order by order_date desc");
		List<Order> list = query.list();
		return list;
	}

	public int get_total_orders() {

		Session session = this.sessionFactory.getCurrentSession();
		Query<Order> query = session.createQuery("from Order ");
		List<Order> list = query.list();
		return list.size();
	}

}
