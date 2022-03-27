package com.codingdojo.assignments.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String resutls(HttpSession session, Model model) {
		
		String result = (String) session.getAttribute("omikujiResult");
		model.addAttribute("result", result);
		
		return "show.jsp";
	}
		
	@PostMapping("/process")
	public String process(
		@RequestParam("number") int number,
		@RequestParam("city") String city,
		@RequestParam("person") String person,
		@RequestParam("hobby") String hobby,
		@RequestParam("livingThing") String livingThing,
		@RequestParam("saySomething") String saySomething,
		HttpSession session) {
		
		String omikujiResult = String.format(
				"In %s years you will live in %s as your roommate, %s. The next time you see a %s, you will have good luck. Also, %s",
				number, city, person, hobby, livingThing, saySomething);
		
		session.setAttribute("omikujiResult", omikujiResult);
		
		return "redirect:/omikuji/show";
	}
}
