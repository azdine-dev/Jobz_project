<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>
<html>
<head>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="<spring:url value="/resources/assets/bootstrap/css/bootstrap.min.css"></spring:url>">
        <link rel="stylesheet" href="<spring:url value="/resources/assets/font-awesome/css/font-awesome.min.css"></spring:url>">
		<link rel="stylesheet" href="<spring:url value="/resources/assets/css/form-elements.css"></spring:url>">
        <link rel="stylesheet" href="<spring:url value="/resources/assets/css/style.css"></spring:url>">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
        integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" 
		integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
	<title>Home</title>
		<link rel="shortcut icon" href='<spring:url value="/resources/assets/ico/favicon.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<spring:url value="/resources/assets/ico/apple-touch-icon-144-precomposed.png"></spring:url>">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<spring:url value="/resources/assets/ico/apple-touch-icon-114-precomposed.png"></spring:url>">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<spring:url value="/resources/assets/ico/apple-touch-icon-72-precomposed.png"></spring:url>">
        <link rel="apple-touch-icon-precomposed" href="<spring:url value="/resources/assets/ico/apple-touch-ico0n-57-precomposed.png"></spring:url>">
		
</head>
<body background='<spring:url value="/resources/assets/img/backgrounds/3.jpg"></spring:url>'>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	 integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	<br/>
	<br/>
	<br/>
	<c:if test="${not empty erreur  }">
		<div class="alert alert-danger">
  			<p align="center"><strong>erreur! </strong> ${erreur}.</p>
		</div>
	</c:if>
	
	<div class="top-content">
        					<spring:url value="/entreprise/s'authentifier" var="var1"></spring:url>
                            <spring:url value="/candidat/s'authentifier" var="var2"></spring:url>
                            <div class="top-big-link">
                            	<a class="btn btn-link-1" href="${var1}">ENTREPRISE</a>
                            	<a class="btn btn-link-1" href="${var2 }">CANDIDAT</a>
                            </div>
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>JOBZ</strong> espace entreprise</h1>
                            <div class="description">
                            	<p>
	                            	ici, vous trouverez les meilleurs candidats satisfaisants vos besoin!!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>veuillez s'authentifier </h3>
                            		<p>entrez votre email et mot de passe</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                            <spring:url value="/entreprise/s'authentifier" var="authentficationURL"></spring:url>
			                    <form role="form" action="${ authentficationURL}" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="email">Username</label>
			                        	<input type="text" name="email" placeholder="Username..." class="form-username form-control" id="email">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="pass">Password</label>
			                        	<input type="password" name="pass" placeholder="Password..." class="form-password form-control" id="pass">
			                        </div>
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...or login with:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
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
        <script src='<spring:url value="/resources/assets/js/scripts.js"></spring:url>'></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
	
</body>
</html>
