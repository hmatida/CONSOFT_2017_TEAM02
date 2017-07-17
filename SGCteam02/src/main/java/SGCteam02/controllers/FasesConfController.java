package SGCteam02.controllers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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

import SGCteam02.daos.FasesConfDao;
import SGCteam02.models.*;
import SGCteam02.daos.*;

@Controller
@RequestMapping("/fasesConferencia")
@Transactional
public class FasesConfController {

	@Autowired
	private FasesConfDao fasesConfDao;
	
	@Autowired
	private ConferenciaDao conferencia;
	
//	@GetMapping("/form-input")
//	public String form(){
//		return "/fasesConferencia/form-input";
//	}
	
	@GetMapping("/list1")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("fasesConferencia/list");
		mAV.addObject("listFases", fasesConfDao.findAll());
		return mAV;
	}
	
	@PostMapping
	public ModelAndView save(@Valid FasesConfecencia fasesConf,
			BindingResult bR){
		
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
		
		ModelAndView moAV = new ModelAndView("fasesConferencia/form-update");
		moAV.addObject("fases", fasesConfDao.findOne(id));
		return moAV;
	}
	@PostMapping("/updateSave/{id}")
	public ModelAndView update(@PathVariable("id") Long id, @Valid FasesConfecencia fasesConf){
		fasesConf.setId(id);
		fasesConfDao.save(fasesConf);
		return new ModelAndView("redirect:/fasesConferencia/list1");
	}
	
	@GetMapping("/form-input")
	public ModelAndView form(){
		ModelAndView mAV = new ModelAndView("fasesConferencia/form-input");
		mAV.addObject("conferencia", conferencia.findAll());	
		return mAV;
	}
	
	
	
	
}
