package SGCteam02.controllers;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SGCteam02.daos.FuncaoDao;
import SGCteam02.daos.UsuarioDao;
import SGCteam02.models.Evento;
import SGCteam02.models.Funcao;
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
		mAV.addObject("funcaoList", funcDao.findAll());
		return mAV;
	}
	
	@PostMapping
	public ModelAndView save(@Valid Usuario user, BindingResult bR){
		userDao.save(user);
		return new ModelAndView("redirect:/cadusuario/list");
	}
	
	@PostMapping("/init")
	public ModelAndView saveinit(@Valid Usuario user, BindingResult bR){
		userDao.save(user);
		String retorno = "Usuário cadastrado com sucesso!";
		ModelAndView mAV = new ModelAndView("home/index");
		mAV.addObject("attrib", retorno);
		return mAV;
	}
	
	@GetMapping("/list")
	public ModelAndView lista(){
		ModelAndView mAV = 
				new ModelAndView("cadusuario/list");
		mAV.addObject("user", userDao.findAll());
		return mAV;
		
	}
	
	@GetMapping("/form-update/{idUsuario}")
	public ModelAndView update(@PathVariable("idUsuario") Long id ){
		ModelAndView mAV = 
				new ModelAndView("cadusuario/form-update");
		mAV.addObject("usuario", userDao.findOne(id));
		return mAV;
		
	}
	
	@PostMapping("/updateSave/{id}")
	public ModelAndView update(@PathVariable("id") Long id, @Valid Usuario usuario){
		usuario.setIdUsuario(id);
		userDao.save(usuario);
		return new ModelAndView("redirect:/cadusuario/list");
	}
	
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id){	
		userDao.delete(id);
		return new ModelAndView ("redirect:/cadusuario/list");
	}
}
