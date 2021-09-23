package com.BO.TiendaVirtualSB;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.boot.json.GsonJsonParser;
import org.springframework.boot.json.JsonParser;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.DAO.TiendaVirtualSB.ClienteDAO;
import com.DTO.TiendaVirtualSB.ClienteVO;
import com.fasterxml.jackson.databind.JsonNode;



@RestController
public class ClienteController {
	
	
	@RequestMapping("/registrarPersona")
	public void registrarPersona(ClienteVO persona) 
	 {
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.registrarPersona(persona);
	    
	 }
	
	@RequestMapping("/modificarPersona")
	public void modificarPersona(ClienteVO persona) 
	 {
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.modificarPersona(persona);
	    
	 }
	
	@RequestMapping("/eliminaPersona")
	public void eliminarPersona(ClienteVO persona) 
	 {
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.eliminarPersona(persona);
	    
	 }
	   
	 
	 
	/**
	 * permite consultar el Cliente asociado al documento enviado
	 * como parametro 
	 * @param documento 
	 * @return
	 */
	
	@RequestMapping("/consultarPersona")
	public boolean consultarPersona(String nombre) {
		ClienteDAO Dao=new ClienteDAO(); 
	return 	Dao.consultarPersona(nombre);
		
	}



	/**
	 * permite consultar la lista de Clientes
	 * @return
	 */
	@RequestMapping("/listarPersonas")
	public ArrayList< ClienteVO> listaDePersonas() {
		ClienteDAO Dao=new ClienteDAO(); 
			
		return Dao.listaDePersonas();
		
	}
	
	
	/**
	 * permite consultar la lista de Clientes
	 * @return
	 */
	@RequestMapping("/listaLogin")
	public boolean loginDePersonas(String usuario, String password) {
		ClienteDAO Dao=new ClienteDAO(); 
		
			
		return Dao.loginDePersonas(usuario,password);
		
		
	}


}