package com.family.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.query.Query;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import com.family.model.Address;
import com.family.model.Customer;

@Repository
@Transactional
public class UserCrud {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void newCustomer(Customer customer) {
		System.out.println("\nHello final");
		Session session = this.sessionFactory.getCurrentSession();
		session.save(customer);

	}

	@SuppressWarnings("unchecked")
	public int is_valid(Customer customer) {
		System.out.println(customer);
		Session session = this.sessionFactory.getCurrentSession();
		Query<Customer> query = session.createQuery("from Customer where email = " + "'" + customer.getEmail() + "'");
		List<Customer> list = query.list();
		if (list.size() == 1) {
			String pass = list.get(0).getPassword();
			if (pass.equals(customer.getPassword())) {
				return list.get(0).getId();
			}
		}
		return 0;
	}

	@SuppressWarnings("unchecked")
	public Customer get_customer(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Customer> query = session.createQuery("from Customer where id = " + "'" + id + "'");
		List<Customer> list = query.list();
		return list.get(0);
	}

	@Transactional
	public void updateCustomerData(Customer customer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(customer);
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public Address getAddress(int id, char s) {
		Session session = this.sessionFactory.getCurrentSession();
		Query<Address> query = session
				.createQuery("from Address where customer_id = " + "'" + id + "' and address_type = '" + s + "'");
		List<Address> list = query.list();
		return list.get(0);
	}

	@Transactional
	public void saveAddres(Address address) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(address);
	}

	@Transactional
	public void updateAddres(Address address) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(address);
	}

	@SuppressWarnings("unchecked")
	public int get_total_customer() {

		Session session = this.sessionFactory.getCurrentSession();
		Query<Customer> query = session.createQuery("from Customer ");
		List<Customer> list = query.list();
		return list.size();
	}

}
