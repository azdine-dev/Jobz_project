package inpt.dahchour.offre.DAO;

import java.util.ArrayList;

import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.Competence;
import inpt.dahchour.offre.beans.Experience;
import inpt.dahchour.offre.beans.offre;

public interface DAOCandidat {
	void  create(Candidat candidat) ;
	Candidat findById(int id) ;
	Candidat findByEmail(String email) ;
	Candidat checkConnection(String email, String pass) ;
	ArrayList<Candidat> findByCompetence(Competence competence);
	void DeleteCandidature(int id_offre, int id_candidat);
	void Postuler(int id_offre, int id_candidat);
	void addSkills(Competence competence);
	void addExperience(Experience experience);
	ArrayList<offre> findMypostulation(int id_candidat);
	Candidat UpdateInfo(Candidat candidat);
	void Delete(int id);
	

}
