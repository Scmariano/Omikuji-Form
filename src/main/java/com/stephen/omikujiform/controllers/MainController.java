package com.stephen.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	@GetMapping("/")
	public String redirect() {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
		
	@PostMapping("/form")
	public String form(
			@RequestParam(value="number") int number, 
			@RequestParam(value="city") String city, 
			@RequestParam(value="name") String name,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="comment") String comment,
			HttpSession session
			) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("comment", comment);
			return "redirect:/omikuji/show";
	}
	
	@GetMapping("/omikuji/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute("number", session.getAttribute("number"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("hobby", session.getAttribute("hobby"));
		model.addAttribute("thing", session.getAttribute("thing"));
		model.addAttribute("comment", session.getAttribute("comment"));
		return "showpage.jsp";
	}
	
}
