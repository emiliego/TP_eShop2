package com.tact.eshop.controller;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tact.eshop.entity.Customer;
import com.tact.eshop.repository.CustomerRepository;


@Controller
@RequestMapping("/user/")
public class CustomerController {
	
	@Autowired
	private CustomerRepository customerRepo;
	
	@RequestMapping("profil")
	public String profil() {		
		return "user/profil";
	}
	
	@RequestMapping("login")
	public String login(HttpSession session) {
		String returnString;
		if(session.getAttribute("account") != null) {
			returnString = "home/index";
		}
		else {
			returnString = "user/login";
		}
		return returnString;
		
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		if(session.getAttribute("account") != null) {
			session.invalidate();
		}
		return "user/logout";
	}
	
	@PostMapping("connexion")
	public String connexion(Customer customer, HttpSession session, Model model) {
		List<Customer> customers = customerRepo.findByLastName(customer.getLastName());
		ArrayList<Customer> customerLogin = new ArrayList<Customer>();
		
		for(Customer customerFromList : customers) {
			if(customerFromList.getFirstName().equals(customer.getFirstName())) {
				customerLogin.add(customerFromList);
			}
		}		
		if(!customerLogin.isEmpty()) {
			session.setAttribute("account", customerLogin.get(0));
			return "home/index";
		}
		else{
			return "user/login";
		}
	}
	

	
}
