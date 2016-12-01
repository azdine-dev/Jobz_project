package inpt.dahchour.offre.DAO;

import java.util.ArrayList;

import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.offre;

public interface DAOoffre {
	void create(offre offre) ;
	ArrayList<offre> findAllOffre();
	offre findById(int id);
	ArrayList<offre> findByVille(String ville);
	ArrayList<offre> findByDomaine(String domaine);
	ArrayList<offre> findByEntreprise(int  id_entreprise);
	offre Update(offre offre);
	void Delete(int id );
	Candidat findIFpostulate(int id_candidat,int id_offre);
	
	

}
