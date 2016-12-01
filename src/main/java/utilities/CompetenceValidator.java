package utilities;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import inpt.dahchour.offre.beans.Competence;

public class CompetenceValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Competence.class.equals(arg0);
				
	}

	@Override
	public void validate(Object obj, Errors error) {
		Competence competence =(Competence) obj;
		if(competence.getDomaine().isEmpty())
			error.rejectValue("nom","","ce champ ne doit pas etre vide ");
		if(competence.getMaitrise().isEmpty())
			error.rejectValue("maitrise","","ce champ ne doit pas etre vide ");
		if(competence.getNom().isEmpty())
			error.rejectValue("nom","","ce champ ne doit pas etre vide ");
	}

}
