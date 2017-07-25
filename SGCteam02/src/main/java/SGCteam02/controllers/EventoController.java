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

import SGCteam02.daos.ConferenciaDao;
import SGCteam02.daos.*;
import SGCteam02.models.Evento;

@Controller
@RequestMapping("/evento")
@Transactional
public class EventoController {

	@Autowired
	private EventoDao eventoDao;
	
	@Autowired
	private ConferenciaDao conferenciaDao;
	
	@Autowired
	private LocalDao localDao;
	
	@GetMapping("/list")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("evento/list");
		mAV.addObject("eventos", eventoDao.findAll());
		mAV.addObject("conferencia", conferenciaDao.findAll());
		return mAV;
	}
	
	@PostMapping
	public ModelAndView save(@Valid Evento evento,
			BindingResult bR){
		
		eventoDao.save(evento);
		return new ModelAndView("redirect:/evento/list");
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id){	
		eventoDao.delete(id);
		return new ModelAndView ("redirect:/evento/list");
	}
	
	@GetMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id){
		
		ModelAndView moAV = new ModelAndView("evento/form-update");
		moAV.addObject("eventos", eventoDao.findOne(id));
		return moAV;
	}
	@PostMapping("/updateSave/{id}")
	public ModelAndView update(@PathVariable("id") Long id, @Valid Evento evento){
		evento.setId(id);
		eventoDao.save(evento);
		return new ModelAndView("redirect:/evento/list1");
	}
	
	@GetMapping("/form-input")
	public ModelAndView form(){
		ModelAndView mAV = new ModelAndView("evento/form-input");
		mAV.addObject("conferencia", conferenciaDao.findAll());	
		mAV.addObject("local", localDao.findAll());
		return mAV;
	}
}
