package SGCteam02.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController
{

   @GetMapping("/")
   public String index()
   {
      return "home/index";
   }
   
   @GetMapping("/inicio")
   public String inicio(){
	   return "home/inicio";
   }
}
