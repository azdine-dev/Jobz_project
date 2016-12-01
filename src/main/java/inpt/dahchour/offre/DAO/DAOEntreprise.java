package inpt.dahchour.offre.DAO;

import inpt.dahchour.offre.beans.Entreprise;

public interface DAOEntreprise {
	void creer(Entreprise entreprise);
	Entreprise checkConnection(String email , String pass);
	Entreprise findByName(String name);
	Entreprise findById(int id);
	Entreprise Delete(Entreprise entreprise);
	Entreprise Update(Entreprise entreprise);
	
	
}
