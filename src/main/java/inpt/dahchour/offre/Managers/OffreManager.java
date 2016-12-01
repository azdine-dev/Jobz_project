package inpt.dahchour.offre.Managers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import inpt.dahchour.offre.DAO.DAOoffreImp;
import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.offre;

public class OffreManager {
   @Autowired
	private DAOoffreImp daooffre;
   
   
   public DAOoffreImp getDaooffre() {
	return daooffre;
}
public void setDaooffre(DAOoffreImp daooffre) {
	this.daooffre = daooffre;
}
public ArrayList<offre> toutesOffres(){
    ArrayList<offre> offres=daooffre.findAllOffre();
    return offres;
   }
   public ArrayList<offre> findOffreEntreprise(int id_entreprise){
	   ArrayList<offre> offres=daooffre.findByEntreprise(id_entreprise);
	   return offres;
   }
   public offre findById(int id_offre){
	   offre offre=daooffre.findById(id_offre);
	   return offre;
   }
   public ArrayList<offre> findByville(String ville){
	   ArrayList<offre> offres=daooffre.findByVille(ville);
	   return offres;
   }
   public ArrayList<offre> findBydomaine(String domaine){
	   ArrayList<offre> offres=daooffre.findByDomaine(domaine);
	   return offres;
   }
   public void addOffre(offre offre){
	   daooffre.create(offre);
   }
   public Candidat findIFpostulate(int id_candidat,int id_offre){
	   Candidat candidat=daooffre.findIFpostulate(id_candidat, id_offre);
	   return candidat;
   }
   public void deleteOffre(int id){
	   daooffre.Delete(id);
   }
}
