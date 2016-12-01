<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <html>
   <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Registration Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href='<spring:url value="/resources/assets1/bootstrap/css/bootstrap.min.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/assets1/font-awesome/css/font-awesome.min.css"></spring:url>'>
		<link rel="stylesheet" href='<spring:url value="/resources/assets1/css/form-elements.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/assets1/css/style.css"></spring:url>'>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href='<spring:url value="/resources/assets1/ico/favicon.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<spring:url value="/resources/assets/ico/apple-touch-icon-144-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href='<spring:url value="/resources/assets/ico/apple-touch-icon-114-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href='<spring:url value="/resources/assets/ico/apple-touch-icon-72-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" href='<spring:url value="/resources/assets/ico/apple-touch-icon-57-precomposed.png"></spring:url>'>

    </head>
   <body background='<spring:url value="/resources/assets/img/backgrounds/2.jpg"></spring:url>'>

		<!-- Top menu -->
		<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Bootstrap Registration Form Template</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<span class="li-text">
								Put some text or
							</span> 
							<a href="#"><strong>links</strong></a> 
							<span class="li-text">
								here, or some icons: 
							</span> 
							<span class="li-social">
								<a href="#"><i class="fa fa-facebook"></i></a> 
								<a href="#"><i class="fa fa-twitter"></i></a> 
								<a href="#"><i class="fa fa-envelope"></i></a> 
								<a href="#"><i class="fa fa-skype"></i></a>
							</span>
						</li>
					</ul>
				</div>
			</div>
		</nav>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 text">
                            <h1><strong>Jobz</strong> espace candidat</h1>
                            <div class="description">
                            	<p>
	                            	
                            	</p>
                            </div>
                            <spring:url value="/entreprise/s'enregistrer" var="1"></spring:url>
                            <spring:url value="/candidat/s'enregistrer" var="2"></spring:url>
                            <div class="top-big-link">
                            	<a class="btn btn-link-1" href="/offre/entreprise/s'enregistrer">ENTREPRISE</a>
                            	<a class="btn btn-link-1" href="/offre/candidat/s'enregistrer">CANDIDAT</a>
                            </div>
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>enregistrez vous</h3>
                            		<p>veuillez remplir tous les champs du formulaire ci-dessous</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                          <spring:url value="/candidat/s'enregistrer" var="enregistrerURL"></spring:url>
                            <form:form action="${enregistrerURL }" method="post" modelAttribute="candidat" cssClass="registration-form">
                            	
			                   
			                    	<div class="form-group">
			                    		<label class="sr-only" for="nom">NOM</label>
			                    		<form:input size="4" path="nom" cssClass="form-first-name form-control" id="nom" placeholder="votre nom"/>
			                        	
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="prenom">PRENOM</label>
			                        	
			                        	<form:input path="prenom" cssClass="form-last-name form-control" id="prenom" placeholder="votre prenom"/>
			                        </div>
			                         <div class="form-group">
			                        	<label class="sr-only" for="prenom">POSTE ACTUEL</label>
			                        	
			                        	<form:input path="poste" cssClass="form-last-name form-control" id="prenom" placeholder="votre poste actuel"/>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="niveau scolaire">niveau scolaire</label>
			                        	<form:input path="niveau_scolaire" cssClass="form-email form-control" id="niveau scolaire" placeholder="votre niveau scolaire "/>
			                        	
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="email">email</label>
			                        	
			                        	<form:input path="email" cssClass="form-last-name form-control" id="email" placeholder="votre email "/>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="tel">numero de telephone </label>
			                        	<form:input path="numTel" cssClass="form-email form-control" id="tel" placeholder="votre numero de telephone"/>
			                        	
			                        </div>
			                         <div class="form-group">
			                        	<label class="sr-only" for="tel">mot de passe </label>
			                        	<form:password path="pass" cssClass="form-email form-control" id="tel" placeholder="votre mote de passe" />
			                        
			                        </div>
			                         <div class="form-group">
			                        	<label class="sr-only" for="tel">confirmation mot de passe </label>
			                        	<form:password path="" cssClass="form-email form-control" id="tel" placeholder="confirmation mot de passe"/>
			                        	
			                        </div>
			                        
			                        
			                        
			                        <button type="submit" class="btn">Sign me up!</button>
			                    
			                 </form:form>   
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src='<spring:url value="/resources/assets/js/jquery-1.11.1.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets/js/jquery.backstretch.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets/js/retina-1.1.0.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets/js/scripts.js"></spring:url>'></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>
  </html>