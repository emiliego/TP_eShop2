package com.tact.eshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tact.eshop.entity.Order;
import com.tact.eshop.entity.Product;
import com.tact.eshop.repository.CustomerRepository;
import com.tact.eshop.repository.OrderRepository;

@Controller
@RequestMapping("/order/")
public class OrderController {
	
	@Autowired
	private OrderRepository orderRepo;
	
    @RequestMapping("list")
    public String listOrder(Model model) {

        List<Order> orders = (List<Order>) orderRepo.findAll();
        model.addAttribute("orders", orders);

        return "order/list";
    }

    @RequestMapping("{id}")
    public String summary(@PathVariable String id, Model model) {

        Order order = orderRepo.findOne(Long.valueOf(id));
        model.addAttribute("order", order);


        return "order/summary";
    }


}