package inpt.dahchour.offre.beans;

import java.util.Date;
import java.util.ArrayList;

public class offre {
	private String nom;
	private int id;
	private String type_offre;
	private String domaine;
	private String ville;
	private String description;
	private String profil_cherche;
	private int id_entreprise;
	private Date date;
	private ArrayList<Candidat> candidats_offres;
	
	
	
	public offre() {
		super();
	}
	public offre(String nom,int id, String type_offre, String domaine,String ville, String description,String profil_cherche, int id_entreprise, Date date,
			ArrayList<Candidat> candidats_offres) {
		super();
		this.nom=nom;
		this.id = id;
		this.type_offre = type_offre;
		this.domaine = domaine;
		this.ville=ville;
		this.description = description;
		this.profil_cherche=profil_cherche;
		this.id_entreprise = id_entreprise;
		this.date=date;
		this.candidats_offres = candidats_offres;
	}
	public offre(String nom,String type_offre, String  domaine,String ville, String description,String profil_cherche, int id_entreprise) {
		super();
		this.nom=nom;
		this.type_offre = type_offre;
		this.domaine = domaine;
		this.ville=ville;
		this.description = description;
		this.profil_cherche=profil_cherche;
		this.id_entreprise = id_entreprise;
		
	}
	public offre(int id,String nom,String type_offre, String  domaine,String ville, String description,String profil_cherche, int id_entreprise, Date date) {
		super();
		this.nom=nom;
		this.id=id;
		this.type_offre = type_offre;
		this.domaine = domaine;
		this.ville=ville;
		this.description = description;
		this.profil_cherche=profil_cherche;
		this.id_entreprise = id_entreprise;
		this.date=date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getProfil_cherche() {
		return profil_cherche;
	}
	public void setProfil_cherche(String profil_cherche) {
		this.profil_cherche = profil_cherche;
	}
	public String getType_offre() {
		return type_offre;
	}
	public void setType_offre(String type_offre) {
		this.type_offre = type_offre;
	}
	public String getDomaine() {
		return domaine;
	}
	public void setDomaine(String domaine) {
		this.domaine = domaine;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getId_entreprise() {
		return id_entreprise;
	}
	public void setId_entreprise(int id_entreprise) {
		this.id_entreprise = id_entreprise;
	}
	public ArrayList<Candidat> getCandidats_offres() {
		return candidats_offres;
	}
	public void setCandidats_offres(ArrayList<Candidat> candidats_offres) {
		this.candidats_offres = candidats_offres;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	
	
}
