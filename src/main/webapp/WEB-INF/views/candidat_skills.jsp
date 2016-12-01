<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href='<spring:url value="/resources/assets3/bootstrap/css/bootstrap.min.css"></spring:url>'>
<link rel="stylesheet" href='<spring:url value="/resources/assets3/font-awesome/css/font-awesome.min.css"></spring:url>'>
<link rel="stylesheet" href='<spring:url value="/resources/assets3/css/style.css"></spring:url>'>

<!-- Favicon and touch icons -->

<link rel="shortcut icon" href="assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        
        
<title>Compétences</title>
</head>

<body background='<spring:url value="/resources/assets3/img/backgrounds/1.jpg"></spring:url>'>
   
   <jsp:include page="header.jsp"></jsp:include>
   
   
   
    <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong style="Color:#ffffcc">Jobz</strong> Candidat Information </h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3><b>Mes Compétences</b></h3>
                            		<p>veuillez svp renseigner vos informations  </p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-info"></i>
                        		</div>
                            </div>
                            <div class="form-bottom contact-form">

		<spring:url value="/candidat/addSkills" var="addSkillsURL"></spring:url>
 		<form:form action="${addSkillsURL }" method="POST" modelAttribute="competence">
 			<form:input path="nom" placeholder="donner un nom à votre comeptence" cssClass="contact-email form-control" />
 			<form:select path="domaine" placeholder="domaine de la compétence " cssClass="contact-message form-control">
 				<option>Informatique</option> 
                        <option>Informatique</option> 
                        <option>Telecoms</option>
                        <option>Marketing </option>
                        <option>Communication</option>
                        <option>Mecanique</option>
                       <option>Medecine</option>
                        <option>linguistique</option>
                       </form:select>
 			<form:select path="maitrise" placeholder="quell est le dégré de la maitrise ?" cssClass="contact-message form-control">
 						<option>bon</option> 
 						<option>très bon</option> 
 						<option>expert</option> 
 			</form:select>
 			<button type="submit" class=" btn btn-info">Ajouter Compétence</button>
 		</form:form>
 		</div>
 		</div>
 		</div>
 		</div>
 		</div>
 		</div>
 		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
 		
</body>
</html>