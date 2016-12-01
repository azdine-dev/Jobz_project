package utilities;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import inpt.dahchour.offre.beans.offre;

public class OffreValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return offre.class.equals(arg0);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		offre offre=(offre)obj;
		if(offre.getNom().isEmpty())
			errors.rejectValue("nom","", "le nom de l'offre ne doit pas etre vide!!");
		if(offre.getVille().isEmpty())
			errors.rejectValue("ville","", "le nom de la ville ne doit pas etre vide");
		if(!offre.getDescription().isEmpty()){
			if(offre.getDescription().length()<=20 )
				errors.rejectValue("description","", "merci d'entrer une description bien detaillée ");
		}
		else
			errors.rejectValue("description","", "la description ne doit pas etre vide");
			
		if(offre.getProfil_cherche().isEmpty())
			errors.rejectValue("profil_cherche","", "merci de preciser le profile cherché ");

	}

}
