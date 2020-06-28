package br.com.fapen.estoque.controllers;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET, name = "indexUrl")
	public String index() {
		return "redirect:/home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET, name = "homeUrl")
	public String home(Principal usuarioPrincipal) {
		return "home";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET, name = "indexUrl2")
	public String index2() {
		return "home";
	}
	
	@RequestMapping(value = "/livros", method = RequestMethod.GET, name = "livrosUrl")
	public String livros() {
		return "livros";
	}
	
	@RequestMapping(value = "/materiais", method = RequestMethod.GET, name = "materiaisUrl")
	public String materiais() {
		return "materiais";
	}
}
