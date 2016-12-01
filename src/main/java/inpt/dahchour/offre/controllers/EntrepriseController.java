package inpt.dahchour.offre.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import inpt.dahchour.offre.Managers.CandidatManager;
import inpt.dahchour.offre.Managers.EntrepriseManager;
import inpt.dahchour.offre.Managers.OffreManager;
import inpt.dahchour.offre.beans.Entreprise;
import inpt.dahchour.offre.beans.offre;

@Controller
@RequestMapping("/entreprise")
public class EntrepriseController {
	@Autowired
	CandidatManager canmanager;
	@Autowired
	EntrepriseManager entremanager;
	@Autowired
	OffreManager offmanager;
	
	@RequestMapping(value="/s'enregistrer",method=RequestMethod.GET)
	public String signUp(Model model ){
		Entreprise entreprise=new Entreprise();
		model.addAttribute("entreprise",entreprise);
		return"s'enregistrer_entreprise";
		
	}
	@RequestMapping(value="/s'enregistrer",method=RequestMethod.POST)
	public String signUp(@ModelAttribute Entreprise entreprise,Model model,HttpSession session){
		entremanager.creerEntreprise(entreprise);
		Entreprise entr=entremanager.EntrepriseExist(entreprise.getEmail(), entreprise.getPassword());
		session.setAttribute("id_entreprise", entr.getId());
		
		model.addAttribute("entreprise",entreprise);
		return"profile_entreprise";
		}
	@RequestMapping(value="/s'authentifier",method=RequestMethod.POST)
	public String signIn(@RequestParam String email ,@RequestParam String pass, Model model,HttpSession session){
		String view="";
		Entreprise entreprise =entremanager.EntrepriseExist(email, pass);
		if(entreprise==null){
			String erreur="votre mot de passe ou email est invalide!!!";
			model.addAttribute("erreur",erreur);
			view="s'authentifier_entreprise";
		}
		else{
			ArrayList<offre> offres=offmanager.toutesOffres();
			model.addAttribute("offres",offres);
			session.setAttribute("id_entreprise", entreprise.getId());
			session.setAttribute("nom_entreprise", entreprise.getNom());
			view="home";
		}
		return view;
	
	}
	@RequestMapping("/s'authentifier")
	public String signIn(){
		return"s'authentifier_entreprise";
	}
	@RequestMapping("/profile")
	public String showProfileEntreprise(Model model, HttpSession session){
		String view="";
		int id_entreprise=(Integer)session.getAttribute("id_entreprise");
		if(id_entreprise==0){
			String erreur="vous n'ètes pas connecté ";
			model.addAttribute("erreur",erreur);
			view="home";
		}
		
		else{
			Entreprise entreprise=entremanager.findById(id_entreprise);
			ArrayList<offre> offres=offmanager.findOffreEntreprise(id_entreprise);
			model.addAttribute("offres", offres);
			model.addAttribute("entreprise",entreprise);
			view="profile_entreprise";
		}
			
		return view;
	}
	@RequestMapping("/deleteoffre/{id}")
	public void deleteOffre(@PathVariable int id, HttpServletRequest req,HttpServletResponse res , Model model ) throws IOException{
		offmanager.deleteOffre(id);
		res.sendRedirect(req.getContextPath()+"/entreprise/profile");
		
	}
	@RequestMapping("/profile/{id}")
	public String showProfileEntreprise(@PathVariable int id,Model model){
			String view="";
			Entreprise entreprise=entremanager.findById(id);
			ArrayList<offre> offres=offmanager.findOffreEntreprise(id);
			model.addAttribute("offres", offres);
			model.addAttribute("entreprise",entreprise);
			view="profile_entreprise";
		
			
		return view;
}
}