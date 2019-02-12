package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Authorities;
import com.niit.models.Customer;
import com.niit.models.User;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private SessionFactory sessionFactory;

	public void registerCustomer(Customer customer) {
		Session session=sessionFactory.getCurrentSession();
		customer.getUser().setEnabled(true);
		Authorities authorities=new Authorities();
		authorities.setRole("ROLE_USER");
		customer.getUser().setAuthorities(authorities);
		authorities.setUser(customer.getUser());
		session.save(customer);
		
		
	}

	public boolean isEmailUnique(String email) {
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class, email);
		if (user==null)
			return true;
		else
			return false;
		}
	}


