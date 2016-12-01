package utilities;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import inpt.dahchour.offre.beans.Experience;

public class ExperienceValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Experience.class.equals(arg0);
	}

	@Override
	public void validate(Object obj, Errors error) {
		Experience exp=(Experience)obj;
		if(!exp.getNom_organisation().isEmpty()){
			if(exp.getNom_organisation().length()<4)
				error.rejectValue("nom_organisation", "", "le nom de l'organisation doit etre de taile 4 caractères au minimum");
		}
		else
			error.rejectValue("nom_organisation", "", "merci de remplir ce champ");
		
			
	}

}
