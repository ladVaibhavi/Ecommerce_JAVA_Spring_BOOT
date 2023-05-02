package com.family.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.family.model.Cart;

@Repository
@Transactional
public class CartCrud {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void save_cart(Cart cart) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(cart);
	}

	@Transactional
	public List<Cart> get_cart(int customer_id) {

		Session session = this.sessionFactory.getCurrentSession();
		Query<Cart> theQuery = session.createQuery("from Cart where cart_id = " + customer_id, Cart.class);
		List<Cart> cart = theQuery.getResultList();
		return cart;
	}

	@Transactional
	public Cart get_cart(int customer_id, int product_id) {

		Session session = this.sessionFactory.getCurrentSession();
		Query<Cart> theQuery = session.createQuery(
				"from Cart where cart_id = " + customer_id + " and product_id = " + product_id, Cart.class);
		List<Cart> cart = theQuery.getResultList();
		if (cart.size() == 1) {
			return cart.get(0);
		}
		return null;
	}

	@Transactional
	public void update_cart(Cart cart) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(cart);
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public void remove_product(int customer_id, int product_Id) {

		Session session = this.sessionFactory.getCurrentSession();
		Query<Cart> query = session.createQuery("delete from Cart where cart_id =:i and product_id =: j");
		query.setParameter("i", customer_id);
		query.setParameter("j", product_Id);
		query.executeUpdate();
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public void delete_products(int customer_id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Cart> query = session.createQuery("delete from Cart where cart_id =:i");
		query.setParameter("i", customer_id);
		query.executeUpdate();

	}
}
