package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id  // - property id unique and not null
	@GeneratedValue(strategy=GenerationType.AUTO) //auto generation - automatically generate the value for id
private int id;
	@NotEmpty(message="Product Name cannot be empty")
private String productname;
	@NotEmpty(message="Product Desc cannot be empty")
private String productdesc;
	@Min(value=0)
private int quantity;
	@Min(value=1)
private double price;
@ManyToOne
private Category category;
@Transient
private MultipartFile image;	
public MultipartFile getImage() {
	return image;
}
public void setImage(MultipartFile image) {
	this.image = image;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public String getProductdesc() {
	return productdesc;
}
public void setProductdesc(String productdesc) {
	this.productdesc = productdesc;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}


}
