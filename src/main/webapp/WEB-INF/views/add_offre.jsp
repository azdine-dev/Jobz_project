	<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href='<spring:url value="/resources/assets3/bootstrap/css/bootstrap.min.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/assets3/font-awesome/css/font-awesome.min.css"></spring:url>'>
		
        <link rel="stylesheet" href='<spring:url value="/resources/assets3/css/style2.css"></spring:url>'>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>JobZ</title>
</head>
<body background='<spring:url value="/resources/assets3/img/backgrounds/1.jpg"></spring:url>'>
<jsp:include page="header.jsp"></jsp:include>
		<spring:url value="/offre/addoffre" var="offreURL"></spring:url>
		<div class="top-content">
            
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong style="Color:#ffffcc">Jobz</strong> Offre </h1>
                            <div class="description">
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3><b>Ajouter Offre</b></h3>
                            		<p><strong>veuillez svp remplir tous les champs avec ce qui est demandé</strong></p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-info"></i>
                        		</div>
                            </div>
                            <div class="form-bottom contact-form">
		<form:form action="${offreURL }" method="POST" modelAttribute="offre">
			<div class="form-group">
			<label class="sr-onl" for="contact-email"><span style=" Color:#ffffcc">NOM</span></label>
			<form:input path="nom" placeholder="donner un nom à votre offre" cssClass="contact-email form-control"/>
			<form:errors path="nom" cssClass="error"/>
			</div>
			<div class="form-group">
            <label class="sr-onl" for="contact-email"><span style=" Color:#ffffcc">Ville</span></label>
			<form:input path="ville" placeholder="ville..." cssClass="contact-email form-control"/>
			<form:errors path="ville" cssClass="error"/>
			</div>
			<div class="form-group">
            <label class="sr-onl" for="contact-email"><span style=" Color:#ffffcc">Type de l'offre</span></label>
			<form:select path="type_offre" placeholder="qu'il est le type de votre offre" cssClass="contact-email form-control">
				<option>Emploie</option> 
                <option>Stage</option>
			</form:select>
			<form:errors path="type_offre" cssClass="error"/>
			</div>
			<div class="form-group">
            <label class="sr-onl" for="contact-email"><span style=" Color:#ffffcc">Domaine</span></label>
			<form:select path="domaine" placeholder="de quel domaine s'agit votre offre" cssClass="contact-email form-control">
				 <option>Informatique</option> 
                 <option>Telecoms</option>
                 <option>Marketing </option>
                 <option>Communication</option>
                 <option>Mecanique</option>
                 <option>Medecine</option>
			</form:select>
			<form:errors path="domaine" cssClass="error"/>
			</div>
			<div class="form-group">
			<label class="sr-onl" for="contact-message"><span style=" Color:#ffffcc">Desciption de l'offre</span></label>	
			<form:textarea path="description" placeholder="decrivez votre offre ici!! de quoi s'agit t'il " cssClass="contact-message form-control"/>
			<form:errors cssClass="error" path="description"/>
			</div>
			 <div class="form-group">
             <label class="sr-onl" for="contact-message"><span style=" Color:#ffffcc">le profile cherché</span></label>
			<form:textarea path="profil_cherche" placeholder="qu'elles sont les conditions pour pouvoir postuler à cette offre" cssClass="contact-message form-control"/>
			<form:errors cssClass="errors" path="profil_cherche"/>
			</div>
			
			<button type="submit" class=" btn btn-info">Ajouter l'Offre</button>
			
		</form:form>
		          </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <script src='<spring:url value="/resources/assets3/js/jquery-1.11.1.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets3/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>
</body >
</html>