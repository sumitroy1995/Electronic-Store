package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CustomerDao;
import com.niit.models.Customer;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerDao customerDao;
	@RequestMapping(value="/all/registrationform")
	public String getRegistrationForm(Model model)
	{
		model.addAttribute("customer", new Customer());
		return "registrationform";
		
	}
	@RequestMapping(value="/all/registercustomer")
	public String registercustomer(@ModelAttribute(name="customer") Customer customer,Model model)
	{
		if(!customerDao.isEmailUnique(customer.getUser().getEmail()))
		{
			model.addAttribute("error", "EmailId already exists choose another one");
			return "registrationform";
		
		}
		
		
		customerDao.registerCustomer(customer);
		return "login";
		
	}

}
