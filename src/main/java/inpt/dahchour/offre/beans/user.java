package inpt.dahchour.offre.beans;

public class user {
	private int  id;
	private String nom;
	public user () {
	}
	public user(String nom) {
		super();
		this.nom = nom;
	}
	public int getId() {
		return id;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public user(int id, String nom) {
		super();
		this.id = id;
		this.nom = nom;
	}
	public void setId(int id) {
		// TODO Auto-generated method stub
		
	}
	

}
