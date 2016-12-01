package inpt.dahchour.offre.beans;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Experience {
	private int id_candidat;
	private String 	type;
	private String nom_organisation;
	private String domaine;
	private String description;
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date date_debut;
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date date_fin;
	
	public Experience(int id_candidat, String type, String nom_organisation, String domaine, String description,
			Date date_debut, Date date_fin) {
		super();
		this.id_candidat = id_candidat;
		this.type = type;
		this.nom_organisation = nom_organisation;
		this.domaine = domaine;
		this.description = description;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
	}
	public int getId_candidat() {
		return id_candidat;
	}
	public Experience() {
		super();
	}
	public void setId_candidat(int id_candidat) {
		this.id_candidat = id_candidat;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNom_organisation() {
		return nom_organisation;
	}
	public void setNom_organisation(String nom_organisation) {
		this.nom_organisation = nom_organisation;
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
	public Date getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(Date date_debut) {
		this.date_debut = date_debut;
	}
	public Date getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(Date date_fin) {
		this.date_fin = date_fin;
	}
}
