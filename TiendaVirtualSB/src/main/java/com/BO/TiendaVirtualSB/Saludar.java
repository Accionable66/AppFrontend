package com.BO.TiendaVirtualSB;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Saludar {
	
	@RequestMapping("/saludar")
	public String Saludar() {
		
		return "Hola mundo, esta es la aplicacion primera web";
	}

}
