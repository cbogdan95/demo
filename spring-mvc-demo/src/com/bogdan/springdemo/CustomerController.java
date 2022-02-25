package com.bogdan.springdemo;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@RequestMapping("/processForm")
	public String procesForm(@Valid @ModelAttribute Customer customer, BindingResult result) {
		
		if (result.hasErrors()) {
			return "customer-form";
		} else {
			return "customer-confirmation";
		}
	}
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		model.addAttribute("customer", new Customer());
		
		return "customer-form";
	}
}
