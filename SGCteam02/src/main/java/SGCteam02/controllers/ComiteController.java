package SGCteam02.controllers;

/**
 * @auor: Nélio
 */
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

import SGCteam02.daos.ComiteDao;
import SGCteam02.daos.ConferenciaDao;
import SGCteam02.models.Comite;


@Controller
@RequestMapping("/comite")
@Transactional
public class ComiteController {

	
	@Autowired
	private ComiteDao comiteDao;

	@Autowired
	private ConferenciaDao conferencia;
	
	@PostMapping
	public ModelAndView save(@Valid Comite comite,
			BindingResult bR){
		comiteDao.save(comite);
		return new ModelAndView("redirect:/comite/list");
	}
	
	@GetMapping("/list")
	public ModelAndView list(){
		ModelAndView mAV = 
				new ModelAndView("comite/list");
		mAV.addObject("listComite",comiteDao.findAll());
		return mAV;
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id){	
		comiteDao.delete(id);
		return new ModelAndView ("redirect:/comite/list");
	}
	
	@GetMapping("/form-input")
	public ModelAndView form(){
		ModelAndView mAV = new ModelAndView("comite/form-input");
		mAV.addObject("comite", conferencia.findAll());	
		return mAV;
	}

}
