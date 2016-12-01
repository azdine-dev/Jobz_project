package inpt.dahchour.offre.beans;

import java.util.ArrayList;

public class Entreprise  {
	private int id;
	private String nom;
	private String ville;
	private String email;
	private String domaine;
	private String description;
	private String password;
	private ArrayList<offre> offres;
	
	public Entreprise(){
		
	}

	public Entreprise(int id, String nom, String ville, String domaine, String description, ArrayList<offre> offres) {
		this.id=id;
		this.nom=nom;
		this.ville = ville;
		this.domaine = domaine;
		this.description = description;
		this.offres = offres;
	}
	
	

	

	public Entreprise(String ville, String email, String domaine, String description, String password) {
		
		this.ville = ville;
		this.email = email;
		this.domaine = domaine;
		this.description = description;
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public ArrayList<offre> getOffres() {
		return offres;
	}

	public void setOffres(ArrayList<offre> offres) {
		this.offres = offres;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getDomaine() {
		return domaine;
	}

	public void setDomaine(String string) {
		this.domaine = string;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public int getId() {
		// TODO Auto-generated method stub
		return id;
	}

	
	public void setId(int id) {
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
