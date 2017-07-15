package SGCteam02.controllers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SGCteam02.daos.AvaliacoesDao;
import SGCteam02.daos.FasesConfDao;
import SGCteam02.models.*;

@Controller
@RequestMapping("/avaliacoes")
@Transactional
public class AvaliacoesController {

	@Autowired
	private AvaliacoesDao avDao;
	
	@GetMapping("avaliacoes/")
	public String form(){
		return "/avaliacoes/index";
	}
	
	
	/*
	@GetMapping("/listarAvaliacoes")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("avaliacoes/list");
		mAV.addObject("listAvaliacoes", avDao.findAll());
		return mAV;
	}
	
	@PostMapping
	public ModelAndView save(@Valid FasesConfecencia fasesConf,
			BindingResult bR){
		
		System.out.println(String.valueOf(fasesConf.getInicialDate()) + " " + String.valueOf(fasesConf.getFimDate()) );
		fasesConfDao.save(fasesConf);
		return new ModelAndView("redirect:/fasesConferencia/list1");
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id){	
		fasesConfDao.delete(id);
		return new ModelAndView ("redirect:/fasesConferencia/list1");
	}
	
	@GetMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id){
		
		ModelAndView moAV = new ModelAndView("fasesConferencia/form-input");
		moAV.addObject(fasesConfDao.findOne(id));
		//fasesConfDao.save()
		return moAV;
	}
	*/
}
