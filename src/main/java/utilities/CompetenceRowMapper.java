package utilities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import inpt.dahchour.offre.beans.Competence;

public class CompetenceRowMapper implements ParameterizedRowMapper<Competence> {

	@Override
	public Competence mapRow(ResultSet rs, int arg1) throws SQLException {
		Competence competence = new Competence(rs.getString("nom"), rs.getString("domaine"),rs.getString("niveau_maitrise") );
		return competence;
	}

}
