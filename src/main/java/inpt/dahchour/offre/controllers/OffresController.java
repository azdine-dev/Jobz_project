package inpt.dahchour.offre.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import inpt.dahchour.offre.Managers.CandidatManager;
import inpt.dahchour.offre.Managers.EntrepriseManager;
import inpt.dahchour.offre.Managers.OffreManager;
import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.Entreprise;
import inpt.dahchour.offre.beans.offre;
import utilities.OffreValidator;

@Controller
@RequestMapping("/offre")
public class OffresController {
	@Autowired
	OffreManager offmanager;
	@Autowired
	CandidatManager candmanager;
	@Autowired
	EntrepriseManager entremanager;
	
	@RequestMapping("/{id}")
	public String detailOffre(Model model,@PathVariable("id") int id){
		offre offre=offmanager.findById(id);
		Entreprise entreprise_offre=entremanager.findById(offre.getId_entreprise());
		model.addAttribute("entreprise_offre",entreprise_offre);
		model.addAttribute("offre",offre);
		return "offre_detail";	
	}
	@RequestMapping("/addoffre")
	public String addOffre(Model model){
		offre offre = new offre();
		model.addAttribute(offre);
		return "add_offre";
	}
	@RequestMapping(value="/addoffre",method=RequestMethod.POST)
	public String addOffre(@Valid @ModelAttribute offre offre,Errors errors,Model model,HttpSession session){
		String view;
		if(!errors.hasErrors()){
		offre.setId_entreprise((Integer)session.getAttribute("id_entreprise"));
		offmanager.addOffre(offre);
		Entreprise entreprise=entremanager.findById((Integer)session.getAttribute("id_entreprise"));
		ArrayList<offre> offres=offmanager.findOffreEntreprise((Integer)session.getAttribute("id_entreprise"));
		model.addAttribute("offres", offres);
		model.addAttribute("entreprise",entreprise);
		model.addAttribute(offre);
		model.addAttribute("succes", "votre offre a été enregistré avec succès.");
		view="profile_entreprise";
		}
		else{
			model.addAttribute("errors", errors);
			view="add_offre";
		}
		return view;
	}
	
	@RequestMapping(value="/postuler/{id_offre}")
	public String candidatPostule(Model model,@PathVariable("id_offre") int id_offre,HttpSession session){
		
		int id_candidat=session.getAttribute("id_candidat")==null?0:(Integer) session.getAttribute("id_candidat");
		Candidat candidat=offmanager.findIFpostulate(id_candidat, id_offre);
		
		 if(id_candidat==0){
			String erreur="vous n'ètes pas authentifier pour pouvoir postuler!!!";
			model.addAttribute("erreur",erreur);
			ArrayList<offre> offres=offmanager.toutesOffres();
			model.addAttribute("offres",offres);
		}
		else if(candidat!=null){
			model.addAttribute("error_login"," vous avez dèjà postulé");
			ArrayList<offre> offres=offmanager.toutesOffres();
			model.addAttribute("offres",offres);
		}
		else{
			candmanager.postuler(id_offre, id_candidat);
			String succes="votre candidature a été bien enregistrée";
			model.addAttribute("succes",succes);
			ArrayList<offre> offres=offmanager.toutesOffres();
			model.addAttribute("offres",offres);
			
		}
		return "home";
		
	}
	@RequestMapping("/findByville/{ville}")
	public String finndByville(@RequestParam("ville") String ville, Model model ){
		ArrayList<offre> offres = offmanager.findByville(ville);
		model.addAttribute("offres",offres);
		return "home";
	}
	@RequestMapping("/findBydomaine/{domaine}")
	public String findBydomaine(@PathVariable("domaine") String domaine, Model model){
		ArrayList<offre> offres=offmanager.findBydomaine(domaine);
		model.addAttribute("offres",offres);
		return"home";
	}
	@InitBinder("offre")
	public void binding2(WebDataBinder binder){
		binder.setValidator(new OffreValidator());
	}
	
		
		
	
}
