package com.niit.dao;


import java.util.List;

import com.niit.models.Category;
import com.niit.models.Product;

public interface ProductDao {
	Product saveProduct(Product product);
	Product getProduct(int id);
	void updateProduct(Product product);
	void deleteProduct(int id);
	List<Product> getAllProducts();
	List<Category> getAllCategories();
	
	public Category saveCategory(Category category);
	public void deleteCategory(int id);

}
