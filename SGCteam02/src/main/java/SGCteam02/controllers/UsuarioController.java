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

import SGCteam02.daos.FuncaoDao;
import SGCteam02.daos.UsuarioDao;
import SGCteam02.models.Usuario;


@Controller
@RequestMapping("/cadusuario")
@Transactional
public class UsuarioController {
	
	@Autowired
	private UsuarioDao userDao;
	
	@Autowired
	private FuncaoDao funcDao;
	

	@GetMapping("/form-input")
	public ModelAndView form(){
		ModelAndView mAV = new ModelAndView("cadusuario/form-input");
		
		mAV.addObject("funcao", funcDao.findAll());	
		return mAV;
	
	}
	
	@PostMapping
	public ModelAndView save(@Valid Usuario user,
			BindingResult bR){
		
		userDao.save(user);
		return new ModelAndView("redirect:/cadusuario/list");
	}
}
