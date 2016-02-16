package br.com.easy.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller 
public class TesteController {

	@RequestMapping("/Teste")
	public String teste(){
		return "Teste";
	}
	
}
