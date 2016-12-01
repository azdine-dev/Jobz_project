package utilities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import inpt.dahchour.offre.beans.Entreprise;

public class EntrepriseParameterizedRowMapper implements ParameterizedRowMapper<Entreprise> {

	@Override
	public Entreprise mapRow(ResultSet rs, int arg1) throws SQLException {
		Entreprise entreprise=new Entreprise();
		entreprise.setId(rs.getInt("id"));
		entreprise.setNom(rs.getString("nom"));
		entreprise.setPassword(rs.getString("pass"));
		entreprise.setEmail(rs.getString("email"));
		entreprise.setVille(rs.getString("ville"));
		entreprise.setDomaine(rs.getString("domaine"));
		entreprise.setDescription(rs.getString("description"));
		return entreprise;
	}

}
