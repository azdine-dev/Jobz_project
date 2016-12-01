package utilities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import inpt.dahchour.offre.beans.Experience;

public class ExperienceRowMapper implements ParameterizedRowMapper<Experience> {

	@Override
	public Experience mapRow(ResultSet rs, int arg1) throws SQLException {
		Experience experience=new Experience(rs.getInt("id_candidat"), rs.getString("type"),
				rs.getString("nom_organisation"), rs.getString("domaine"),rs.getString("description"),rs.getDate("date_debut"),rs.getDate("date_fin")); 

		return experience;
	}
	

}
