package inpt.dahchour.offre.Managers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import inpt.dahchour.offre.DAO.DAOCandidat;
import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.Competence;
import inpt.dahchour.offre.beans.Experience;
import inpt.dahchour.offre.beans.offre;

public class CandidatManager {
	
	@Autowired
	private DAOCandidat daocandidat;
	
	
	public DAOCandidat getDaocandidat() {
		return daocandidat;
	}
	public void setDaocandidat(DAOCandidat daocandidat) {
		this.daocandidat = daocandidat;
	}
	public void creerCandidat(Candidat candidat){
		daocandidat.create(candidat);
	}
	public Candidat findCandidatById(int id){
		Candidat candidat =daocandidat.findById(id);
		return candidat;
	}
	public Candidat Candidatexist(String email , String pass){
		Candidat candidat=daocandidat.checkConnection(email, pass);
		return candidat;
	}
	public void DeleteCandidat(int id){
		daocandidat.Delete(id);
	}
	public void DeleteCandidature(int id_offre, int id_candidat){
		daocandidat.DeleteCandidature(id_offre, id_candidat);
	}
	public void postuler(int id_offre,int id_candidat){
		daocandidat.Postuler(id_offre, id_candidat);
	}
	public void addSkills(Competence competence){
		daocandidat.addSkills(competence);
	}
	public void addExperience(Experience experience){
		daocandidat.addExperience(experience);
	}
	public ArrayList<offre> findMypostulations(int id_candidat){
		ArrayList<offre> mes_offres=daocandidat.findMypostulation(id_candidat);
		return mes_offres;
	}

}
