package inpt.dahchour.offre.DAO;

import java.util.ArrayList;

import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;

import inpt.dahchour.offre.beans.Candidat;
import inpt.dahchour.offre.beans.offre;
import utilities.CandidatParameterizedRowMapper;
import utilities.offreParameterizedRowMapper;

public class DAOoffreImp extends SimpleJdbcDaoSupport implements DAOoffre {
	private static final String INSERT ="INSERT INTO `offre`( `nom`,`type_offre`, `domaine`, `description`,`profil_cherche`, `id_entreprise`, `ville` ,`date` )"
			+ "VALUES (?,?,?,?,?,?,?,NOW())";
	private static final String FIND_BY_ID ="SELECT * FROM offre WHERE id= ?";
	private static final String FIND_BY_EMAIL =	"SELECT * FROM offre WHERE email = ?";
	private static final String FIND_BY_VILLE ="SELECT * FROM offre WHERE ville = ?";
	private static final String FIND_BY_ENTREPRISE ="SELECT * FROM offre WHERE id_entreprise = ?";
	private static final String FIND_BY_DOMAINE="SELECT * FROM offre WHERE  domaine = ?";
	private static final String DELETE ="DELETE  FROM offre WHERE  id = ?";
	private static final String UPDATE =" UPDATE  offre SET   description = ?";
	

	@Override
	public void create(offre offre) {
		// TODO Auto-generated method stub
		getSimpleJdbcTemplate().update(INSERT, offre.getNom(),offre.getType_offre(),offre.getDomaine(),offre.getDescription(),offre.getProfil_cherche(),offre.getId_entreprise(),offre.getVille());

	}
	

	@Override
	public ArrayList<offre> findAllOffre() {
		// TODO Auto-generated method stub
		ArrayList<offre> offres=(ArrayList<offre>) getSimpleJdbcTemplate().query("SELECT * FROM offre", new offreParameterizedRowMapper());
		return offres;
	}


	@Override
	public ArrayList<offre> findByEntreprise(int id_entreprise) {
		ArrayList<offre> offres =(ArrayList<offre>) getSimpleJdbcTemplate().query(FIND_BY_ENTREPRISE, new offreParameterizedRowMapper(), id_entreprise);
		return offres;
		
	}

	@Override
	public offre findById(int id) {
		// TODO Auto-generated method stub
		ArrayList<Candidat> candidats=(ArrayList<inpt.dahchour.offre.beans.Candidat>) getSimpleJdbcTemplate().query("SELECT c.* FROM `candidat`c INNER JOIN offre_candidat oc ON oc.id_candidat=c.id INNER JOIN offre o ON o.id=oc.id_offre where o.id=?", new CandidatParameterizedRowMapper(), id);
		
		ArrayList<offre> offres = (ArrayList<offre>) getSimpleJdbcTemplate().query(FIND_BY_ID, new offreParameterizedRowMapper(), id);
		offre offre=offres.isEmpty()?null:offres.get(0);
		offre.setCandidats_offres(candidats);
		
		return offre;
	}

	@Override
	public ArrayList<offre> findByVille(String ville) {
		ArrayList<offre> offres =(ArrayList<offre>) getSimpleJdbcTemplate().query(FIND_BY_VILLE, new offreParameterizedRowMapper(), ville);
		return offres;
		
	}

	@Override
	public ArrayList<offre> findByDomaine(String domaine) {
		ArrayList<offre> offres =(ArrayList<offre>) getSimpleJdbcTemplate().query(FIND_BY_DOMAINE, new offreParameterizedRowMapper(), domaine);
		return offres;
	}
	@Override
	public offre Update(offre offre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void Delete(int id) {
		getSimpleJdbcTemplate().update("DELETE FROM offre WHERE id=?", id);
		getSimpleJdbcTemplate().update("DELETE FROM offre_candidat WHERE id_offre=?", id);

	}


	@Override
	public Candidat findIFpostulate(int id_candidat, int id_offre) {
		// TODO Auto-generated method stub
		ArrayList<Candidat> candidats=(ArrayList<Candidat>) getSimpleJdbcTemplate().query("SELECT  c.* FROM   `candidat` c INNER JOIN offre_candidat of ON of.id_candidat = c.id INNER JOIN offre o ON o.id = of.id_offre WHERE  c.id=? AND o.id=? ", new CandidatParameterizedRowMapper(), id_candidat,id_offre);
		return candidats.isEmpty()?null:candidats.get(0);
	}
	
}
