package com.tact.eshop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tact.eshop.entity.Product;
import com.tact.eshop.repository.ProductRepository;

@Controller
@RequestMapping("/home/")
public class HomeController {

	    @Autowired
	    private ProductRepository productRepo;

	    @RequestMapping("index")
	    public String bestProducts(Model model) {
	    	 List<Product> products = (List<Product>) productRepo.findAll();
	         model.addAttribute("products", products);

	        return "home/index";


	}

}
