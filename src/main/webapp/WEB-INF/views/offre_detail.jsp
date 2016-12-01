
    <%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>

<title>Insert title here</title>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>JobZ</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/css/icomoon-social.css"></spring:url>'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href='<spring:url value="/resources/css/leaflet.css"></spring:url>' />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href='<spring:url value="/resources/css/main.css"></spring:url>'>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1 align="center">Détails de l'offre</h1>
					</div>
				</div>
			</div>
	</div>	
			<div class="section">
	    	<div class="container">
	    		<div class="row">
	    			<!-- Product Image & Available Colors -->
	    			<div class="col-sm-6">
	    				<div class="product-image-large">
	    					<img src='<spring:url value="/resources/img/services1.jpg"></spring:url>' alt="Item Name">
	    				</div>
	    				<div class="colors">
							<span class="color-white"></span>
							<span class="color-black"></span>
							<span class="color-blue"></span>
							<span class="color-orange"></span>
							<span class="color-green"></span>
						</div>
						<a href='<spring:url value="/offre/postuler/${offre.id }"></spring:url>' "><button class="btn btn-info"> postuler pour cette offre</button></a>
	    			</div>
	    			<!-- End Product Image & Available Colors -->
	    			<!-- Product Summary & Options -->
	    			<div class="col-sm-6 product-details">
	    				<h4>${offre.nom}</h4>
	    				
						
						<table class="shop-item-selections">
							<!-- Color Selector -->
							
							<!-- Size Selector -->
							<tr>
								<td><b>Domaine:</b></td>
								<td>
									
								
                                  <span style="Color:#cc0000"><b>${offre.domaine}</b> </span>
 								</td>
							</tr>
							<!-- Quantity -->
							<tr>
								<td><b>Type:</b></td>
								<td>
									<span style="Color:#cc0000"> <b>${offre.type_offre }</b></span>
								</td>
							</tr>
							<tr>
								<td><b>entreprise:</b></td>
								<td>
									<a href='<spring:url value="/entreprise/profile/${entreprise_offre.id }"></spring:url>'><span style="Color:#cc0000"> <b>${entreprise_offre.nom }</b></span></a>
								</td>
							</tr>
							<!-- Add to Cart Button -->
							
						</table>
						
	    			</div>
	    			<!-- End Product Summary & Options -->
	    			
	    			<!-- Full Description & Specification -->
	    			<div class="col-sm-12">
	    				<div class="tabbable">
	    					<!-- Tabs -->
							<ul class="nav nav-tabs product-details-nav">
								<li class="active"><a href="#tab1" data-toggle="tab">Description</a></li>
								<li><a href="#tab2" data-toggle="tab">les candidats qui ont postulé</a></li>
							</ul>
							<!-- Tab Content (Full Description) -->
							<div class="tab-content product-detail-info">
								<div class="tab-pane active" id="tab1">
									<h4>Description de l'offre</h4>
									<p>
										${offre.description}
									</p>
									<h4>profils cherchés</h4>
									<ul>
										${offre.profil_cherche }
									</ul>
									
								</div>
								<div class="tab-pane" id="tab2">
									<table>
										<tr>
											<td>NOM </td>
											<td>Email</td>
											<td>TEL</td>
										</tr>
										<c:forEach items="${offre.candidats_offres }" var="candidat">
											<tr>
											<td><a href='<spring:url value="/candidat/profile/${candidat.id }"></spring:url>'>${candidat.nom } ${candidat.prenom }</td>
											<td>${candidat.email }</td>
											<td>${candidat.numTel }</td>
										</tr>
										</c:forEach>
										
									</table>
								</div>
								
							</div>
						</div>
	    			</div>
	    			<!-- End Full Description & Specification -->
	    		</div>
			</div>
		</div>
			
		
        
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

</body>
</html>