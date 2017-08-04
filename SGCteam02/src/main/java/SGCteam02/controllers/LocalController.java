package SGCteam02.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SGCteam02.daos.LocalDao;
import SGCteam02.models.*;

@Controller
@RequestMapping("/cadlocal")
public class LocalController {
	
	@Autowired
	private LocalDao localDao;
	
	@PostMapping
	public ModelAndView save(@Valid Local local, BindingResult bindingResult){
		if (bindingResult.hasErrors())
	      {
	         return null;
	      }
	      localDao.save(local);
	      return new ModelAndView("redirect:/cadlocal/list");
	}
	
	@GetMapping("/form-input")
	public String form(){
		return "/cadlocal/form-input";
	}
	
	@GetMapping("/list")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("cadlocal/list");
		mAV.addObject("listlocal",localDao.findAll());
		return mAV;
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id){	
		localDao.delete(id);
		return new ModelAndView ("redirect:/cadlocal/list");
	}
	
	@GetMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id){
		
		ModelAndView moAV = new ModelAndView("cadlocal/form-update");
		moAV.addObject("local", localDao.findOne(id));
		return moAV;
	}
	
	@PostMapping("/updateSave/{id}")
	public ModelAndView update(@PathVariable("id") Long id, @Valid Local local){
		local.setId(id);
		localDao.save(local);
		return new ModelAndView("redirect:/cadlocal/list");
	}
	
	
}
