package inpt.dahchour.offre.DAO;

import java.util.ArrayList;

import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;

import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.Entreprise;
import utilities.EntrepriseParameterizedRowMapper;

public class DAOEntrepriseImp extends SimpleJdbcDaoSupport implements DAOEntreprise {
	private static final String INSERT_ENTREPRISE = "INSERT INTO entreprise (nom, domaine, email,ville, pass) VALUES (?, ?, ? ,? , ?)";
	private static final String FIND_ENTREPRISE_BY_ID="SELECT id,nom,email,pass,ville,domaine,description FROM entreprise WHERE id= ? ";
	private static final String FIND_ENTREPRISE_BY_Name="SELECT id,nom,prenom,email,numtel,pass FROM entreprise WHERE nom = ? ";
    private static final String DELETE_ENTREPRISE_BY_ID= "DELETE FROM entreprise WHERE id = ?";

	@Override
	public void creer(Entreprise entreprise) {
		getSimpleJdbcTemplate().update(INSERT_ENTREPRISE , entreprise.getNom(),entreprise.getDomaine(),entreprise.getEmail()
				,entreprise.getVille(),entreprise.getPassword());

	}
	
	@Override
	public Entreprise checkConnection(String email, String pass) {
	ArrayList<Entreprise> resultat=(ArrayList<Entreprise>) getSimpleJdbcTemplate().query("SELECT id,nom,ville,domaine,email,description,pass FROM entreprise WHERE email=? AND pass=? " ,
				new EntrepriseParameterizedRowMapper() , email, pass);
	
		Entreprise entreprise = resultat.isEmpty()?null:resultat.get(0);
		System.out.println(entreprise.getId());
		return entreprise;
		
	}

	@Override
	public Entreprise findByName(String nom) {
		// TODO Auto-generated method stub
		ArrayList<Entreprise> resultat=(ArrayList<Entreprise>) getSimpleJdbcTemplate().query( FIND_ENTREPRISE_BY_Name,
				new EntrepriseParameterizedRowMapper() , nom);
		Entreprise entreprise = resultat.isEmpty()?null:resultat.get(0);
		return entreprise;
		
	}

	@Override
	public Entreprise findById(int id) {
		ArrayList<Entreprise> resultat=(ArrayList<Entreprise>) getSimpleJdbcTemplate().query(FIND_ENTREPRISE_BY_ID,
				new EntrepriseParameterizedRowMapper() , id);
		Entreprise entreprise = resultat.isEmpty()?null:resultat.get(0);
		return entreprise;
	}

	@Override
	public Entreprise Delete(Entreprise entreprise) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Entreprise Update(Entreprise entreprise) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
