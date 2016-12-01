	<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href='<spring:url value="/resources/assets3/bootstrap/css/bootstrap.min.css"></spring:url>'>
<link rel="stylesheet" href='<spring:url value="/resources/assets3/font-awesome/css/font-awesome.min.css"></spring:url>'>
<link rel="stylesheet" href='<spring:url value="/resources/assets3/css/style2.css"></spring:url>'>
	
	        
	        
	        <link rel="shortcut icon" href='<spring:url value="/resources/assets3/ico/favicon.png"></spring:url>'>
	        <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<spring:url value="/resources/assets3/ico/apple-touch-icon-144-precomposed.png"></spring:url>'>
	        <link rel="apple-touch-icon-precomposed" sizes="114x114" href='<spring:url value="/resources/assets3/ico/apple-touch-icon-114-precomposed.png"></spring:url>'>
	        <link rel="apple-touch-icon-precomposed" sizes="72x72" href='<spring:url value="/resources/assets3/ico/apple-touch-icon-72-precomposed.png"></spring:url>'>
	        <link rel="apple-touch-icon-precomposed" href='<spring:url value="/resources/assets3/ico/apple-touch-icon-57-precomposed.png"></spring:url>'>

<title>Insert title here</title>
</head>
<body background='<spring:url value="/resources/assets3/img/backgrounds/1.jpg"></spring:url>'>
<jsp:include page="header.jsp"></jsp:include>
		 <!-- Top content -->
		 <c:if test="${not empty succes_expereice }">
		<div class="alert alert-success">
  			<p align="center"><strong>Success!</strong> ${succes_expereice }</p>
				</div>
	</c:if>
         <div class="top-content">
            
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong style="Color:#ffffcc">Jobz</strong> Candidat Experiences </h1>
                            <div class="description">
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3><b>Mes Expériences</b></h3>
                            		<p><strong>veuillez svp renseigner vos information</strong></p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-info"></i>
                        		</div>
                            </div>
                            <div class="form-bottom contact-form">
                            <spring:url value="/candidat/addExperience" var="experienceURL"></spring:url>
                            	<form:form action="${experienceURL }" method="POST" modelAttribute="experience">
			                    
			                    	<div class="form-group">
			                    		<label class="sr-only" for="nom">Nom</label>
			                    		<form:input path="nom_organisation" placeholder="Nom de l'organisme d'accueil..." cssClass="contact-email form-control" id="nom"/>	
			                    		<form:errors path="nom_organisation" cssClass="error"/>
			                        </div>

                                     <div class="form-group">
                                        <label class="sr-onl" for="contact-email"><span style=" Color:#ffffcc">Type</span></label>
                                        <form:select path="type" placeholder="Type de l'expérience..." id="contact-email" cssClass="contact-email form-control" >
                                      	<form:errors path="type" cssClass="error" /> 
                                        
                                           
                                           <option>Emploie</option> 
                                           <option>Stage</option>
                                           
                                        </form:select>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="sr-onl" for="contact-email"><span style=" Color:#ffffcc">Domaine</span></label>
                                        
                                         <form:select path="domaine" placeholder="domaine de l'expérience..." cssClass="contact-email form-control">
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
			                        	<label class="sr-onl" for="contact-subject"><span style="Color:#ffffcc">Date début<span></span></label>
			                        	<form:input path="date_debut"   placeholder="format ../../.." cssClass="contact-subject form-control" id="contact-subject"/>
			                        		
			                        	
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-onl" for="contact-subject"><span style="Color:#ffffcc">Date fin<span></span></label>
			                        	<fmt:formatDate value="${yourObject.date}" var="dateString" pattern="dd/MM/yyyy" />
			                        	<form:input path="date_fin"  value="${dateString}" placeholder="format ../../.." cssClass="contact-subject form-control" id="contact-subject"/>
			                        </div>
                                     


			                        <div class="form-group">
			                        	<label class="sr-only" for="contact-message">Description</label>
			                        	<form:textarea path="description" placeholder="Description..."  cssClass="contact-message form-control" id="contact-message"/>
			                        
			                        </div>

									
			                        <button type="submit" class=" btn btn-info">Ajouter l'Expérience</button>
			                    </form:form>
			                    
                                    
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
 
 
        <script src="<spring:url value="/resources/assets3/bootstrap/js/bootstrap.min.js"></spring:url>"></script>
        <script src="<spring:url value="/resources/assets3/js/jquery.backstretch.min.js"></spring:url>"></script>
        <script src="<spring:url value="/resources/assets3/js/retina-1.1.0.min.js"></spring:url>"></script>
        <script src="<spring:url value="/resources/assets3/js/scripts.js"></spring:url>"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
		
</body>
</html>