package SGCteam02.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SGCteam02.daos.UsuarioDao;
import SGCteam02.models.*;


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
	
	@PostMapping
	public ModelAndView save(@Valid Usuario user,
			BindingResult bR){
		
		userDao.save(user);
		return new ModelAndView("redirect:/cadusuario/list");
	}
}
