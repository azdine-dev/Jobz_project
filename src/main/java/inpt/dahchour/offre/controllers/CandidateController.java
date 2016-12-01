package inpt.dahchour.offre.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
import inpt.dahchour.offre.beans.Competence;
import inpt.dahchour.offre.beans.Experience;
import inpt.dahchour.offre.beans.offre;
import utilities.CandidatValidator;
import utilities.CompetenceValidator;
import utilities.ExperienceValidator;

@Controller
@RequestMapping("candidat")
public class CandidateController {
	@Autowired
	CandidatManager canmanager;
	@Autowired
	EntrepriseManager entrmanager;
	@Autowired
	OffreManager offmanager;

	@RequestMapping(value="/s'enregistrer", method=RequestMethod.GET)
	public String signUp(Model model,HttpSession session, HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		Candidat candidat=new Candidat();
		model.addAttribute("candidat",candidat);
		return "enregister_candidat";
		
	}
	
	@RequestMapping(value="/s'enregistrer",method=RequestMethod.POST)
	public void signUp(@Valid @ModelAttribute Candidat candidat,Errors error,HttpSession session,HttpServletRequest request , HttpServletResponse response) throws IOException{
		canmanager.creerCandidat(candidat);
		if(error.hasErrors())
			System.out.println(error);
		else{
		Candidat candidat_v2=canmanager.Candidatexist(candidat.getEmail(), candidat.getPass());
		session.setAttribute("id_candidat", candidat_v2.getId());
		session.setAttribute("nom_candidat", candidat_v2.getNom());
	
		response.sendRedirect(request.getContextPath()+"/candidat/addExperience");
		}
	}
	@RequestMapping(value="/addExperience",method=RequestMethod.GET)
	public String addExperience(Model model ){
		Experience experience=new Experience();
		model.addAttribute(experience);
		return"candidat_experience";
		}
	@RequestMapping(value="/addExperience",method=RequestMethod.POST)
	public String addExperience(@Valid @ModelAttribute Experience experience,Errors errors,HttpSession session,Model model,HttpServletRequest request ,HttpServletResponse response ) throws IOException{
				String view;
				if(!errors.hasErrors()){
					int id_candidat =(Integer)session.getAttribute("id_candidat");
					experience.setId_candidat(id_candidat);
					canmanager.addExperience(experience);
					model.addAttribute("succes_expereice","votre expérince a été bien ajoutée à votre CV");
					Candidat candidat=canmanager.findCandidatById(id_candidat);
					ArrayList<Experience> experiences=candidat.getExperiences();
					ArrayList<Competence> competences=candidat.getCompetences();
					model.addAttribute("competences",competences);
					model.addAttribute("experiences",experiences);
					model.addAttribute("candidat",candidat);
					view="profile_candidat";
				}
				else{
					model.addAttribute("errors",errors);
					
					view="candidat_experience";
				}
					return view;
				
					
	}
	@RequestMapping(value="/addSkills",method=RequestMethod.GET)
	public String addSkills(Model model ){
		Competence competence=new Competence();
		model.addAttribute(competence);
		
		return"candidat_skills";
		
	}
	@RequestMapping(value="/addSkills",method=RequestMethod.POST)
	public String addSkills( @Valid @ModelAttribute Competence competence,Errors errors, HttpSession session,HttpServletRequest request ,Model model, HttpServletResponse response) throws IOException{
		String view;
		if(!errors.hasErrors()){
		int id_candidat =(Integer)session.getAttribute("id_candidat");
		competence.setId_user(id_candidat);
		canmanager.addSkills(competence);
		Candidat candidat=canmanager.findCandidatById(id_candidat);
		ArrayList<Experience> experiences=candidat.getExperiences();
		ArrayList<Competence> competences=candidat.getCompetences();
		model.addAttribute("succes_skills","votre compétence a été bien ajoutée à votre CV ");
		model.addAttribute("competences",competences);
		model.addAttribute("experiences",experiences);
		model.addAttribute("candidat",candidat);
		view="profile_candidat";
		}
		else{
			model.addAttribute("errors", errors);
			view="candidat_skills";
		}
		
		return	view;
		
		
	}
	
	@RequestMapping(value="/s'authentifier")
	public String signIn(){
		return "s'authentifier";
	}
	@RequestMapping(value="/s'authentifier",method=RequestMethod.POST)
	public String signIn(@RequestParam String email,@RequestParam String pass, Model model,HttpSession session,HttpServletResponse response,HttpServletRequest request) throws IOException{
		String view="";
		Candidat candidat =canmanager.Candidatexist(email, pass);
		
		if(candidat==null){
			String erreur="votre mot de passe ou email n'est pas correct !! ";
			model.addAttribute("erreur",erreur);
			view="s'authentifier";
		
		}
		else{
			
			
			session.setAttribute("id_candidat", candidat.getId());
			
			session.setAttribute("nom_candidat", candidat.getNom()+" "+candidat.getPrenom());
			ArrayList<offre> offres=offmanager.toutesOffres();
			model.addAttribute("offres",offres);
			
			view="home";
		}
		return view;		
	}
	@RequestMapping("/profile")
	public String showCandidatProfile(Model model,HttpSession session){
		int id=(Integer) session.getAttribute("id_candidat");
		Candidat candidat=canmanager.findCandidatById(id);
		ArrayList<offre> offres=canmanager.findMypostulations(id);
		ArrayList<Experience> experiences=candidat.getExperiences();
		ArrayList<Competence> competences=candidat.getCompetences();
		model.addAttribute("offres",offres);
		model.addAttribute("competences",competences);
		model.addAttribute("experiences",experiences);
		model.addAttribute("candidat",candidat);
		
		return "profile_candidat";
	}
	@RequestMapping("/profile/{id_candidat}")
	public String showCandidatProfile(Model model,@PathVariable int id_candidat){
		
		Candidat candidat=canmanager.findCandidatById(id_candidat);
		
		ArrayList<Experience> experiences=candidat.getExperiences();
		ArrayList<Competence> competences=candidat.getCompetences();
		
		model.addAttribute("competences",competences);
		model.addAttribute("experiences",experiences);
		model.addAttribute("candidat",candidat);
		
		return "profile_candidat";
	}
	@RequestMapping("/exit")
	public void logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException{
		session.invalidate();
		response.sendRedirect(request.getContextPath());
		
	}
	
	@InitBinder("candidat")
	public void binding(WebDataBinder binder){
		binder.setValidator(new CandidatValidator());
		
	}
	@InitBinder("experience")
	public void binding1(WebDataBinder binder){
		binder.setValidator(new ExperienceValidator());
	}
	@InitBinder("competence")
	public void binding2(WebDataBinder binder){
		binder.setValidator(new CompetenceValidator());
	}
	
	
	
}
