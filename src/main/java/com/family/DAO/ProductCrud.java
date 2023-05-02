package com.family.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.family.model.Address;
import com.family.model.Product;

@Repository
@Transactional
public class ProductCrud {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void AddProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(product);
	}

	@Transactional
	public void UpdateProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(product);
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProduct() {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product ");
		List<Product> list = query.list();
		return list;

	}

	@SuppressWarnings("unchecked")
	public Product getProduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product where id = '" + id + "'");
		List<Product> list = query.list();
		return list.get(0);
	}

	public void delete_product(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("delete from Product where id=:i");
		query.setParameter("i", id);
		query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public int number_of_product(String catagory) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product  where catagory = '" + catagory + "'");
		List<Product> list = query.list();
		return list.size();
	}

	@SuppressWarnings("unchecked")
	public List<Product> get_product(int starting, String type) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product where catagory = '" + type + "'");

		query.setFirstResult(starting);
		query.setMaxResults(2);
		List<Product> list = query.list();
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Product> get_product(int starting) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product ");

		query.setFirstResult(starting);
		query.setMaxResults(2);
		List<Product> list = query.list();
		return list;
	}

	@SuppressWarnings("unchecked")
	public int get_total_products() {

		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product ");

		List<Product> list = query.list();
		return list.size();
	}

	public int total_out_of_stock_products() {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product where quantity = '0' ");

		List<Product> list = query.list();
		return list.size();
	}
}
