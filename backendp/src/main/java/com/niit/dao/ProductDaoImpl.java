package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Category;
import com.niit.models.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao
{
@Autowired
private SessionFactory sessionFactory;
public Product saveProduct(Product product)
{
	Session session =sessionFactory.getCurrentSession();
	System.out.println("Id of the product before persisting"+product.getId());
	session.save(product);
	return product;
	
}
public Product getProduct(int id) {
	Session session=sessionFactory.getCurrentSession();
	Product product =(Product)session.get(Product.class,id);
	return product;
}
public void updateProduct(Product product) {
	Session session=sessionFactory.getCurrentSession();
	session.update(product);

	
}
public void deleteProduct(int id) {
	Session session=sessionFactory.getCurrentSession();
	Product product=(Product)session.get(Product.class,id);
	if(product!=null)
	session.delete(product);
	
}
public List<Product> getAllProducts() {
	Session session=sessionFactory.getCurrentSession();
	//HQL - Hibernate Query Language
	//Fetch all records from Product_s190032 table
	//HQL :  "from Product" - here Product is the name of the Entity
	//SQL : select * from product -> list of product objects
	
	Query query=session.createQuery("from Product");//Product is name of the Entity
	List<Product> products=query.list();
	return products;
}
public List<Category> getAllCategories() {
	Session session =sessionFactory.getCurrentSession();
	Query query =session.createQuery("from Category");
	List <Category> categories=query.list();
	return categories;
}

public Category saveCategory(Category category)
{
	Session session =sessionFactory.getCurrentSession();
	System.out.println("Id of the product before persisting"+category.getId());
	session.save(category);
	return category;
}
public void deleteCategory(int id) {
	Session session=sessionFactory.getCurrentSession();
	Category category=(Category)session.get(Category.class,id);
	if(category!=null)
	session.delete(category);
	
}
}
