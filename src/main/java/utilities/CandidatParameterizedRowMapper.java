package utilities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import inpt.dahchour.offre.beans.Candidat;

public class CandidatParameterizedRowMapper implements ParameterizedRowMapper<Candidat> {

	@Override
	public Candidat mapRow(ResultSet rs, int arg1) throws SQLException {
		Candidat candidat=new Candidat();
		candidat.setId(rs.getInt("id"));
		candidat.setNom(rs.getString("nom"));
		candidat.setPoste(rs.getString("poste"));
		candidat.setPrenom(rs.getString("prenom"));
		candidat.setEmail(rs.getString("email"));
		candidat.setNumTel(rs.getString("numtel"));
		candidat.setPass(rs.getString("pass"));
		return candidat;
	}

}
