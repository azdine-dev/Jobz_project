package inpt.dahchour.offre.Managers;

import org.springframework.beans.factory.annotation.Autowired;

import inpt.dahchour.offre.DAO.DAOEntreprise;
import inpt.dahchour.offre.beans.Entreprise;

public class EntrepriseManager {
	@Autowired
	private DAOEntreprise daoentreprise;
	
	
	public DAOEntreprise getDaoentreprise() {
		return daoentreprise;
	}
	public void setDaoentreprise(DAOEntreprise daoentreprise) {
		this.daoentreprise = daoentreprise;
	}
	public void creerEntreprise(Entreprise entreprise){
		daoentreprise.creer(entreprise);
	}
	public Entreprise EntrepriseExist(String email, String pass){
		Entreprise entreprise=daoentreprise.checkConnection(email, pass);
		return entreprise;
	}
	public Entreprise findById(int id){
		Entreprise entreprise = daoentreprise.findById(id);
		return entreprise;
	}
	public Entreprise findByNom(String nom){
		Entreprise entreprise=daoentreprise.findByName(nom);
		return entreprise;
	}

}
