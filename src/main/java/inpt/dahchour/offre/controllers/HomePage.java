package inpt.dahchour.offre.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import inpt.dahchour.offre.Managers.OffreManager;
import inpt.dahchour.offre.beans.offre;


@Controller
public class HomePage {
	@Autowired
	OffreManager offmanager;
	@RequestMapping("/")
	public String bringHomePage(Model model){
		ArrayList<offre> offres=offmanager.toutesOffres();
		model.addAttribute("offres",offres);
		return "home";
		
	}

}
