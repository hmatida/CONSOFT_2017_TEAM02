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

import SGCteam02.daos.FuncaoDao;
import SGCteam02.models.FasesConfecencia;
import SGCteam02.models.Funcao;




@Controller
@RequestMapping("/cadfuncao")
@Transactional
public class FuncaoController {

	
	@Autowired
	private FuncaoDao funcDao;
	
	@GetMapping("/form-input")
	public String form(){
		return "/cadfuncao/form-input";
	}
	
	@GetMapping("/list")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("cadfuncao/list");
		mAV.addObject("listFuncoes", funcDao.findAll());
		return mAV;
	}
	
	@PostMapping
	public ModelAndView save(@Valid Funcao func,
			BindingResult bR){
		
		funcDao.save(func);
		return new ModelAndView("redirect:/cadfuncao/list");
	}
	
	@GetMapping("/delete/{idFuncao}")
	public ModelAndView delete(@PathVariable("idFuncao") Long idFuncao){	
		funcDao.delete(idFuncao);
		return new ModelAndView ("redirect:/cadfuncao/list");
	}
	
	@GetMapping("/update/{idFuncao}")
	public ModelAndView update(@PathVariable("idFuncao") Long idFuncao){
		
		ModelAndView moAV = new ModelAndView("cadfuncao/form-update");
		moAV.addObject("fases", funcDao.findOne(idFuncao));
		return moAV;
	}
	@PostMapping("/updateSave/{idFuncao}")
	public ModelAndView update(@PathVariable("idFuncao") Long idFuncao, @Valid Funcao func){
		func.setIdFuncao(idFuncao);
		funcDao.save(func);
		return new ModelAndView("redirect:/cadfuncao/list");
	}
	
}
