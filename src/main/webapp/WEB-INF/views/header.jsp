<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" 
integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>JobZ</title>
<!-- Latest compiled and minified CSS -->


<!-- Latest compiled and minified JavaScript -->

</head>
<body>

	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href='<spring:url value="/"></spring:url>'>Jobz</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
     	<spring:url value="/candidat/s'enregistrer" var="register"></spring:url>
     	<li><a href="/offre/candidat/s'authentifier">se connecter</a></li>
        <li><a href="${register }">s'enregistrer </a></li>
        
        
        
      </ul>
      
      <c:if test="${not empty nom_candidat }">
      	<ul class="nav navbar-nav navbar-right"> 
        	<li class="dropdown">
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${nom_candidat} <span class="caret"></span></a>
          	<ul class="dropdown-menu">
            <li><a href='<spring:url value="/candidat/profile"></spring:url>'>voir profile </a></li>
            <li><a href='<spring:url value="/candidat/exit"></spring:url>'>se déconnecter</a></li>
            
          </ul>
        </li>
      </ul>
      </c:if>
      <c:if test="${not empty nom_entreprise }">
      	<ul class="nav navbar-nav navbar-right"> 
        	<li class="dropdown">
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${nom_entreprise} <span class="caret"></span></a>
          	<ul class="dropdown-menu">
            <li><a href='<spring:url value="/entreprise/profile"></spring:url>'>voir profile </a></li>
            <li><a href='<spring:url value="/candidat/exit"></spring:url>'>se déconnecter</a></li>
            
          </ul>
        </li>
      </ul>
      </c:if>
      
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

</body>
</html>