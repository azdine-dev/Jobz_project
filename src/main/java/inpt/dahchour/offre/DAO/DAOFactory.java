package inpt.dahchour.offre.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DAOFactory {
	
	
	 private String              url;
	    private String              username;
	    private String              password;

	    DAOFactory( String url, String username, String password ) {
	        this.url = url;
	        this.username = username;
	        this.password = password;
	    }

	   
	    public static DAOFactory getInstance() throws DAOConfigurationException {
	        Properties properties = new Properties();
	        String url="jdbc:mysql://localhost:3306/dlala_db";
	        String driver="com.mysql.jdbc.Driver";
	        String nomUtilisateur="root";
	        String motDePasse="";

	        
	        try {
	            Class.forName( driver );
	        } catch ( ClassNotFoundException e ) {
	            throw new DAOConfigurationException( "Le driver est introuvable dans le classpath.", e );
	        }

	        DAOFactory instance = new DAOFactory( url, nomUtilisateur, motDePasse );
	        return instance;
	    }

	     	Connection getConnection() throws SQLException {
	        return (Connection) DriverManager.getConnection( url,  username, password );
	    }
	     	/*public  DAOCandidatImp getCandidatDAO(){
	     		return new DAOCandidatImp(this);
	     	}*/


}
