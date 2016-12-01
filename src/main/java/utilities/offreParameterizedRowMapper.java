package utilities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import inpt.dahchour.offre.beans.offre;

public class offreParameterizedRowMapper implements ParameterizedRowMapper<offre> {

	@Override
	public offre mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		offre offre=new offre(rs.getInt("id")
				,rs.getString("nom"),
				rs.getString("type_offre"),
				rs.getString("domaine"),
				rs.getString("ville"),
				rs.getString("description"),
				rs.getString("profil_cherche"),
				rs.getInt("id_entreprise"),
				rs.getDate("date"));
		return offre;
	}
	

}
