package SGCteam02.controllers;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import SGCteam02.daos.LocalDao;
import SGCteam02.models.*;

@Controller
@Transactional
@RequestMapping("/cadLocal")
public class LocalController {
	
	@Autowired
	private LocalDao localDao;
	
	@GetMapping("/form")
	public ModelAndView form (Local local){
		ModelAndView modelAndView= new ModelAndView("home/cadLocal");
		return modelAndView;
	
	}
	
	@PostMapping
	public ModelAndView save(@Valid Local local, BindingResult bindingResult){
		if (bindingResult.hasErrors())
	      {
	         return form(local);
	      }
	      localDao.save(local);
	      return new ModelAndView("redirect:/cadLocal");
	}
	
	@GetMapping
	public ModelAndView list(){
		ModelAndView modelAndView = 
				new ModelAndView("home/list"); 
		modelAndView.addObject("listLocal", localDao.findAll());
		return modelAndView;
	}

}
