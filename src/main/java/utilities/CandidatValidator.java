package utilities;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import inpt.dahchour.offre.beans.Candidat;

public class CandidatValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Candidat.class.equals(arg0);
	}

	@Override
	public void validate(Object obj, Errors error) {
		Candidat candidat = (Candidat)obj;
		if(candidat.getNom().length()<4 ){
			error.rejectValue("nom", "candidat.nom", "la taille du nom doit étre supérieur à 4 caractères");
		}
		if( candidat.getPrenom().length()<4)
			error.rejectValue("nom", "candidat.nom", "la taille du prenom doit étre supérieur à 4 caractères");
		if(candidat.getNumTel().length()<10)
			error.rejectValue("numTel","","ceci n'est pas unnuméro de téléphone ");
		if(candidat.getPass().length()<6)
			error.rejectValue("pass", "","le mot de passe doit contenir 6 caractères au minimum");
		
	}
		

}
