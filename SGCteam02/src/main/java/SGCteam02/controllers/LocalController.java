package SGCteam02.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SGCteam02.daos.LocalDao;
import SGCteam02.models.*;

@Controller
@RequestMapping("/cadLocal")
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
	      return new ModelAndView("redirect:/cadLocal");
	}
	

}
