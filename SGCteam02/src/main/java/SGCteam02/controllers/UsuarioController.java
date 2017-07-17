package SGCteam02.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import SGCteam02.daos.UsuarioDao;


@Controller
@RequestMapping("/cadusuario")
@Transactional
public class UsuarioController {
	
	@Autowired
	private UsuarioDao userDao;
	
	
	@GetMapping("/form-input")
	public String form(){
		return "/cadusuario/form-input";
	}

}
