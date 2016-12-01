package inpt.dahchour.offre.DAO;


import static utilities.UtilitiesConnection.fermeturesSilencieuses;
import static utilities.UtilitiesConnection.initialisationRequetePreparee;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;

import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.Competence;
import inpt.dahchour.offre.beans.Experience;
import inpt.dahchour.offre.beans.offre;
import utilities.CandidatParameterizedRowMapper;
import utilities.CompetenceRowMapper;
import utilities.ExperienceRowMapper;
import utilities.offreParameterizedRowMapper;


public class DAOCandidatImp extends SimpleJdbcDaoSupport implements DAOCandidat {
	private static final String INSERT_CANDIDAT = "INSERT INTO candidat (nom,poste, prenom, email,numtel, pass,niveau_scolaire) VALUES (?,?, ?, ? ,? , ?,?)";
	private static final String FIND_CANDIDAT_BY_ID="SELECT id,nom,poste,prenom,email,numtel,pass FROM candidat WHERE id= ? ";
	private static final String FIND_CANDIDAT_BY_EMAIL="SELECT id,nom,poste,prenom,email,numtel,pass FROM candidat WHERE email = ? ";
    private static final String DELETE_CANDIDAT_BY_ID= "DELETE FROM candidat WHERE id = ?";
    private static final String DELETE_CANDIDATURE= "DELETE FROM offre_candidat WHERE id_offre = ? AND id_candidat=?";
    private static final String POSTULER="INSERT INTO offre_candidat VALUES(? , ?)";
    private static final String UPDATE="UPDATE candidat SET email=?, pass=? , numtel=? , niveau_scolaire=?";
	
	@Override
	public void Postuler(int id_offre, int id_candidat) {
		// TODO Auto-generated method stub
		getSimpleJdbcTemplate().update(POSTULER, id_offre, id_candidat);
		
	}



	@Override
	public Candidat checkConnection(String email,String pass) {
		// TODO Auto-generated method stub
		ArrayList<Candidat> resultat=(ArrayList<Candidat>) getSimpleJdbcTemplate()
				.query("SELECT nom,poste,id,prenom,email,numtel,pass,niveau_scolaire FROM candidat WHERE email= ? AND pass=? ",new CandidatParameterizedRowMapper() , email,pass);
		Candidat candidat=resultat.isEmpty()?null:resultat.get(0);
		System.out.println(candidat);
		return candidat;
		
	}

	
   
	@SuppressWarnings("deprecation")
	@Override
	public void create(Candidat candidat) throws DAOException {
		getSimpleJdbcTemplate().update(INSERT_CANDIDAT, candidat.getNom(),candidat.getPoste(),candidat.getPrenom(),candidat.getEmail(),candidat.getNumTel(),candidat.getPass(),candidat.getNiveau_scolaire());
    
	}
	
	
	@Override
	public void addSkills(Competence competence) {
		getSimpleJdbcTemplate().update("INSERT INTO competence VALUES(?,?,?,?) ", competence.getId_user(),competence.getNom(),
				competence.getDomaine(),competence.getMaitrise());
		
	}



	@Override
	public void addExperience(Experience experience) {
		getSimpleJdbcTemplate().update("INSERT INTO experience VALUES(?,?,?,?,?,?,?)", experience.getId_candidat(),experience.getType(),experience.getNom_organisation(),
				experience.getDomaine(),experience.getDescription(),experience.getDate_debut(),experience.getDate_fin());
		
	}



	@Override
	public void DeleteCandidature(int id_offre, int id_candidat) {
	getSimpleJdbcTemplate().update(DELETE_CANDIDATURE, id_offre,id_candidat);	
		
	}



	public Candidat findById(int id) throws DAOException {
		
		ArrayList<Candidat> resultat=(ArrayList<Candidat>) getSimpleJdbcTemplate().query(FIND_CANDIDAT_BY_ID,new CandidatParameterizedRowMapper() , id);
		Candidat candidat=resultat.isEmpty()?null:resultat.get(0);
		ArrayList<Experience> experiences=(ArrayList<Experience>)getSimpleJdbcTemplate().query("SELECT * FROM experience WHERE id_candidat=?", new ExperienceRowMapper(), id);
		ArrayList<Competence> competences=(ArrayList<Competence>)getSimpleJdbcTemplate().query("SELECT * FROM competence WHERE id_candidat=?",new CompetenceRowMapper() , id);
		candidat.setCompetences(competences);
		candidat.setExperiences(experiences);
		return candidat;
	}

	@Override
	public Candidat findByEmail(String email) throws DAOException {
		ArrayList<Candidat> resultat=(ArrayList<Candidat>) getSimpleJdbcTemplate().query(FIND_CANDIDAT_BY_EMAIL,new CandidatParameterizedRowMapper() , email);
		Candidat candidat=resultat.isEmpty()?null:resultat.get(0);
		return candidat;
	}

	@Override
	public ArrayList<Candidat> findByCompetence(Competence competence) throws DAOException {
    
		return null;
	}

	@Override
	public Candidat UpdateInfo(Candidat candidat) throws DAOException {
		getSimpleJdbcTemplate().update(UPDATE, candidat.getEmail(),candidat.getPass(),candidat.getNumTel(),candidat.getNiveau_scolaire());
		return candidat;
	}

	@Override
	public void Delete( int id) throws DAOException {
		getSimpleJdbcTemplate().update(DELETE_CANDIDAT_BY_ID, id);
		
	}



	@Override
	public ArrayList<offre> findMypostulation(int id_candidat) {
		ArrayList<offre> offres=(ArrayList<offre>) getSimpleJdbcTemplate().query("SELECT  o.* FROM   `offre` o INNER JOIN offre_candidat of ON of.id_offre = o.id INNER JOIN candidat c ON c.id = of.id_candidat WHERE  c.id=? ", new offreParameterizedRowMapper(), id_candidat);
		
		return offres.isEmpty()?null:offres;
	}
	
	
	
   
}
