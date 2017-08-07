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
import SGCteam02.daos.UsuarioDao;
import SGCteam02.models.Comite;
import SGCteam02.models.Usuario;


@Controller
@RequestMapping("/comite")
@Transactional
public class ComiteController {

	
	@Autowired
	private ComiteDao comiteDao;
	
	@Autowired
	private UsuarioDao usuarioDao;

	@Autowired
	private ConferenciaDao conferencia;
	
	@PostMapping
	public ModelAndView save(@Valid Comite comite,
			BindingResult bR){
		comiteDao.save(comite);
		return new ModelAndView("redirect:/comite/list");
	}
	
	@PostMapping("/update/{id}")
	public ModelAndView update(@PathVariable Long id, @Valid Comite comite,
			BindingResult bR){
		Comite comite2 = new Comite();
		comite2=comiteDao.findOne(id);
		comite.setId(id);
		comite.setUsuarios(comite2.getUsuarios());
		comite.setParticipantes(comite2.getUsuarios().size());
		comiteDao.save(comite);
		return new ModelAndView("redirect:/comite/list");
	}
	
	@PostMapping("/participante/{id}")
	public ModelAndView save2(@PathVariable Long id, @Valid Comite comite){
		Comite comt=new Comite();
		comt=comiteDao.findOne(id);
		String attrib="";
		ModelAndView mAV = new ModelAndView("/comite/list");
		mAV.addObject("listComite", comiteDao.findAll());
		if(comt.getNroMaxParticipantes() > comt.getParticipantes()){
			if(comt.getUsuarios().containsAll(comite.getUsuarios()) == true){
				attrib="Participante já incluso nesse comitê.";
				mAV.addObject("attrib", attrib);
				return mAV;
			} else {
				comt.addParticipantes(comite.getUsuarios());
				comt.setParticipantes(comt.getUsuarios().size());
				comt.setId(id);
				comiteDao.save(comt);
				attrib="Participante incluso com sucesso!";
				mAV.addObject("attrib", attrib);
				return mAV;
			}
		} else{
			attrib="Número máximo de participantes já alcançado para esse comitê!";
			mAV.addObject("attrib", attrib);
			return mAV;
		}
	
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
		mAV.addObject("conferencia", conferencia.findAll());	
		return mAV;
	}
	
	@GetMapping("/form-input_partc/{id}")
	public ModelAndView form2(@PathVariable("id") Long id){
		ModelAndView mAV = new ModelAndView("comite/form-input_partc");
		mAV.addObject("comite", comiteDao.findOne(id));
		mAV.addObject("usuarios", usuarioDao.findAll());
		return mAV;
	}
	
	@GetMapping("/view-detail/{id}")
	public ModelAndView detail(@PathVariable("id") Long id){
		ModelAndView mAV = new ModelAndView("comite/view-detail");
		mAV.addObject("comite", comiteDao.findOne(id));	
		return mAV;
	}
	
	@GetMapping("/form-update/{id}")
	public ModelAndView update(@PathVariable("id") Long id){
		ModelAndView mAV = new ModelAndView("comite/form-update");
		mAV.addObject("comite", comiteDao.findOne(id));	
		mAV.addObject("conferencia", conferencia.findAll());
		return mAV;
	}
	
	@GetMapping("/delete-user/{id}&{id2}")
	public ModelAndView deleteUser(@PathVariable("id") Long id, @PathVariable("id2") Long id2){
		Comite comite2 = new Comite();
		comite2=comiteDao.findOne(id2);
		comite2.removeParticipante(usuarioDao.findOne(id));
		comiteDao.save(comite2);
		ModelAndView mAV = new ModelAndView("comite/view-detail");
		mAV.addObject("comite", comiteDao.findOne(id2));	
		return mAV;
	}

}
