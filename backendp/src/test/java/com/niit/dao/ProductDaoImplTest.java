package com.niit.dao;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.models.Product;

import junit.framework.TestCase;

public class ProductDaoImplTest extends TestCase {
	ApplicationContext context =new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class);
     ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
	public void testSaveProduct() {
		Product product=new Product();
		product.setPrice(10000);
		product.setProductname("CAMERA");
		product.setProductdesc("20 MEGA PIXEL");
		product.setQuantity(1000);
		product=productDao.saveProduct(product);
		assertTrue(product.getId()>0);
		
	}

	public void testGetProduct() 
	{
	Product product3=productDao.getProduct(1);	
	Product product1=productDao.getProduct(5);
	Product product2=productDao.getProduct(4);
	assertNotNull(product1);
	assertNull(product2);
	assertNull(product3);
	
	double expectedPrice=570;
	double actualPrice=product1.getPrice();
	assertEquals(expectedPrice,actualPrice);
	
	}
	public void testUpdateProduct()
	{
		Product product = productDao.getProduct(5);
		product.setPrice(570);
		product.setQuantity(40);
		productDao.updateProduct(product);
		assertTrue(product.getPrice()==570);
		assertTrue(product.getQuantity()==40);
	}
	public void  testGetAllProducts()
	{
		List<Product> products=productDao.getAllProducts();
		assertTrue(products.size()>0);
		assertFalse(products.isEmpty());
		
	}
	public void testdeleteProduct()
	{
		Product products=productDao.getProduct(38);
		assertNull(products);
	}
	
}