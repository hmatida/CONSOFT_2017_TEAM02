package SGCteam02.controllers;

import SGCteam02.models.*;

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

import SGCteam02.daos.ConferenciaDao;

@Controller
@RequestMapping("/conferencia")
@Transactional
public class ConferenciaController {
	
	@Autowired
	private ConferenciaDao confDao;
	
	@GetMapping("/form-input")
	public String form(){
		return "/conferencia/form-input";
	}
	
	@PostMapping
	public ModelAndView save(@Valid Conferencia a,
			BindingResult bR){
		confDao.save(a);
		return new ModelAndView("redirect:/conferencia/list");
	}
	
	@GetMapping("/list")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("conferencia/list");
		mAV.addObject("listConferencia",confDao.findAll());
		return mAV;
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id){	
		confDao.delete(id);
		return new ModelAndView ("redirect:/conferencia/list");
	}
	
	@GetMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id){
		
		ModelAndView moAV = new ModelAndView("conferencia/form-input");
		moAV.addObject("conferencia", confDao.findOne(id));
		return moAV;
	}
	
	@GetMapping("/listForConf/{id}")
	public ModelAndView listForConf(@PathVariable("id") Long id){
		ModelAndView mAV = 
				new ModelAndView("conferencia/listForConf");
		mAV.addObject("conferencia",confDao.findOne(id));
		return mAV;
	}
}
