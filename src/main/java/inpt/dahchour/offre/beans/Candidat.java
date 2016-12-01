package inpt.dahchour.offre.beans;

import java.util.ArrayList;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.NumberFormat;

public class Candidat {
	
	private int id;
	@NotNull
	@Size(min=4)
	private String nom;
	private String poste;
	@Size(min=4)
	private String  prenom;
	@Email
	private String email;
	@NumberFormat
	private String numTel;
	@Size(min=6,max=20)
	private String pass;
	@Size(min=6)
	private String  niveau_scolaire;
	private ArrayList<Competence> competences;
	private ArrayList<Experience> experiences;
	
	public Candidat() {
	}
	

	public Candidat(int id, String nom,String poste, String prenom, String email, String numTel,String pass, String niveau_scolaire,
			ArrayList<Competence> competences, ArrayList<Experience> experiences) {
		this.id=id;
		this.nom=nom;
		this.poste=poste;
		this.prenom = prenom;
		this.email = email;
		this.numTel = numTel;
		this.pass= pass;
		this.niveau_scolaire = niveau_scolaire;
		this.competences = competences;
		this.experiences = experiences;
	}
	

	
	

	public Candidat( String nom, String prenom,String poste, String email, String numTel,String pass, String niveau_scolaire) {
		this.nom=nom;
		this.poste=poste;
		this.prenom = prenom;
		this.email = email;
		this.numTel = numTel;
		this.niveau_scolaire=niveau_scolaire;
		this.pass= pass;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getPoste() {
		return poste;
	}


	public void setPoste(String poste) {
		this.poste = poste;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumTel() {
		return numTel;
	}

	public void setNumTel(String numTel) {
		this.numTel = numTel;
	}

	public String getNiveau_scolaire() {
		return niveau_scolaire;
	}

	public void setNiveau_scolaire(String niveau_scolaire) {
		this.niveau_scolaire = niveau_scolaire;
	}

	public ArrayList<Competence> getCompetences() {
		return competences;
	}

	public void setCompetences(ArrayList<Competence> competences) {
		this.competences = competences;
	}

	public ArrayList<Experience> getExperiences() {
		return experiences;
	}

	public void setExperiences(ArrayList<Experience> experiences) {
		this.experiences = experiences;
	}

	
	public int getId() {
		// TODO Auto-generated method stub
		return id;
	}

	
	public void setId(int id) {
		// TODO Auto-generated method stub
		this.id=id;
	}


	public String getNom() {
		// TODO Auto-generated method stub
		return nom;
	}

	
	public void setNom(String nom) {
		// TODO Auto-generated method stub
		this.nom=nom;
	}
	

}
