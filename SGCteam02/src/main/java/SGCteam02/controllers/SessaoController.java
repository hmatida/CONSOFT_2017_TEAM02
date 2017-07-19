package SGCteam02.controllers;

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

import SGCteam02.daos.*;
import SGCteam02.models.*;

@Controller
@RequestMapping("/sessao")
@Transactional
public class SessaoController {
	@Autowired
	private SessaoDao sessaoDao;
	
	@Autowired
	private ConferenciaDao conferencia;
	
	@Autowired
	private UsuarioDao usuarioDao;
	
	@GetMapping("/list")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("sessao/list");
		mAV.addObject("listSessao", sessaoDao.findAll());
		mAV.addObject("usuarios", usuarioDao.findAll());
		return mAV;
	}
	
	@PostMapping
	public ModelAndView save(@Valid Sessao sessao,
			BindingResult bR){
		
		sessaoDao.save(sessao);
		return new ModelAndView("redirect:/sessao/list");
	}
	
	@GetMapping("/delete/{idSessao}")
	public ModelAndView delete(@PathVariable("idSessao") Long idSessao){	
		sessaoDao.delete(idSessao);
		return new ModelAndView ("redirect:/sessao/list");
	}
	
	@GetMapping("/update/{idSessao}")
	public ModelAndView update(@PathVariable("idSessao") Long idSessao){
		
		ModelAndView moAV = new ModelAndView("sessao/form-update");
		moAV.addObject("fases", sessaoDao.findOne(idSessao));
		return moAV;
	}
	@PostMapping("/updateSave/{idSessao}")
	public ModelAndView update(@PathVariable("idSessao") Long idSessao, @Valid Sessao sessao){
		sessao.setId(idSessao);
		sessaoDao.save(sessao);
		return new ModelAndView("redirect:/sessao/list");
	}
	@GetMapping("/form-input")
	public ModelAndView form(){
		ModelAndView mAV = new ModelAndView("sessao/form-input");
		mAV.addObject("conferencia", conferencia.findAll());	
		return mAV;
	}
}
