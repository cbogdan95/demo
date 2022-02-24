package com.bogdan.springdemo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}

	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	//add conntroller to read data and add date to the model
	
	@RequestMapping("/processFormVersionTwo")
	public String readWriteData(HttpServletRequest request, Model model) {
		
		String studentName = request.getParameter("studentName");
		studentName = studentName.toUpperCase();
		
		String result = "Yo! " + studentName;
		
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String readWriteData2(
			@RequestParam("studentName") String studentName,
			Model model) {
		
		studentName = studentName.toUpperCase();
		
		String result = "Yo V3! " + studentName;
		
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
}
