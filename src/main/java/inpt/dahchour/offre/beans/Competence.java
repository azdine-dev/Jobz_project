package inpt.dahchour.offre.beans;

	public class Competence {
	private int id_user;
	private String nom;
	private String domaine;
	private String maitrise;
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public String getNom() {
		return nom;
	}
	public Competence() {
		super();
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getDomaine() {
		return domaine;
	}
	public void setDomaine(String domaine) {
		this.domaine = domaine;
	}
	public String getMaitrise() {
		return maitrise;
	}
	public void setMaitrise(String maitrise) {
		this.maitrise = maitrise;
	}
	public Competence(String nom, String domaine, String maitrise) {
		super();
		this.nom = nom;
		this.domaine = domaine;
		this.maitrise = maitrise;
	}
	
	

}
