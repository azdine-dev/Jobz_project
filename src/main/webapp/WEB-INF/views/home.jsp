<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JobZ</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, user-scalable=no" />      
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700' rel='stylesheet' type='text/css' />

        <link href='<spring:url value="/resources/assets2/styles/Reset.css"></spring:url>' rel="stylesheet" type="text/css" />
       <link href='<spring:url value="/resources/assets2/styles/base.css"></spring:url>' rel="stylesheet" type="text/css" />
       
       <script src='<spring:url value="/resources/assets2/plugins/jquery-1.11.1.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets2/plugins/jquery-migrate-1.2.1.min.js"></spring:url>'></script>
        
        <script src='<spring:url value="/resources/assets2/plugins/jquery.cycle2.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets2/plugins/jquery.cycle2.carousel.min.js"></spring:url>'></script>
        
        <style type="text/css">
            .wrapper {
                padding-top: 20px;
            }

        </style>

</head>
<body>
<jsp:include page="header.jsp" ></jsp:include>
	<c:if test="${not empty erreur }">
		<div class="alert alert-danger">
  			<p align="center"><strong >erreur!</strong>${erreur }</p>
		</div>
	</c:if>
	<c:if test="${not empty error_login }">
		<div class="alert alert-danger">
  			<p align="center"><strong >erreur!</strong>${error_login }</p>
		</div>
	</c:if>
	<c:if test="${not empty succes }">
		<div class="alert alert-success">
  			<p align="center"><strong>Success!</strong> ${succes }</p>
				</div>
	</c:if>
	
	 <div id="content-wrapper" class="wrapper">
        <div class="pagewidth">
            
            
            
            
            <div class="clear"></div>
            <div class="left-side">
                <div class="box1">
                    <h1>CATEGORIES</h1>
                    <ul>
                        <li><a href='<spring:url value="/offre/findBydomaine/informatique"></spring:url>'>INFORMATIQUE</a></li>
                        <li><a href='<spring:url value="/offre/findBydomaine/telecoms"></spring:url>'>TELECOMS</a></li>
                        <li><a href='<spring:url value="/offre/findBydomaine/marketing"></spring:url>'>MARKETING</a></li>
                        <li><a href='<spring:url value="/offre/findBydomaine/communication"></spring:url>'>COMMUNICATION</a></li>
                        <li><a href='<spring:url value="/offre/findBydomaine/mecanique"></spring:url>'>MECANIQUE</a></li>
                        <li><a href='<spring:url value="/offre/findBydomaine/medecine"></spring:url>'>MEDECINE</a></li>
                       
                    </ul>
                </div>
                
         	</div>
		
		<div class="right-side">
                <ul>
                	<c:forEach items="${offres }" var="offre">
                   	 	<li>
                        	<div class="box">
                            	<img src='<spring:url value="/resources/jobz_image.jpg"></spring:url>' id="photo">
                            	<div class="top">
                                	<h1>${offre.nom }</h1>
                               		 
                                	<div class="date">added ${offre.date }</div>
                            	</div>
                            	<div class="bottom">
                               	 	
                                	
                                	<a href='<spring:url value="/offre/${offre.id }"></spring:url>' id="view-more">VIEW MORE</a>
                            	</div>
                        	</div>

                    	</li>
                    </c:forEach>
             	</ul>
          </div>
	</div>
	</div>
	 <div id="footer-wrapper" class="wrapper">
        <div class="pagewidth" >
            <div class="top">
                <div class="left-side">
                    <ul class="main">
                        <li>
                            <h1>Information</h1>
                            <ul>
                                <li><a href="">job search basics</a></li>
                                <li><a href="">Job applications</a></li>
                                <li><a href="">Best sites for job listings</a></li>
                                <li><a href="">Cover letter tips & examplse</a></li>
                                <li><a href="">Resume tips & examples</a></li>
                                <li><a href="">Interview questions & advice</a></li>
                            </ul>
                        </li>
                        <li>
                            <h1>NEED TO KNOW</h1>
                            <ul>
                                <li><a href="">How to get a new job fast</a></li>
                                <li><a href="">best way to apply for jobs online</a></li>
                                <li><a href="">interview questions & answers</a></li>
                                <li><a href="">resume & cover letter samples</a></li>
                                <li><a href="">how to resign from a job</a></li>
                            </ul>
                        </li>
                        <li>    
                            <h1>NEWSLETTER</h1>
                            <p class="news">news on jobs,keep up</p>
                            <form><input type="text" placeholder="E-MAIL ADRESS">
                                  <div id="send"><div class="icon-form"></div></div>     
                            </form>

                        </li>
                    </ul>
                </div>
                <div class="right-side">
                        <div class="header">
                            <h1>Jo<span>bz</span></h1>
                            <p class="slash">/</p>
                            <h2>contact</h2>
                        </div>
                            <div class="clear"></div>
                            <ul>
                                <li>
                                    <p class="title">INPT</p>
                                    <p>Madinat Al Irfane </p>
                                    <p>Rabat</p>
                                </li>
                                <li>
                                    <p>(+212) <span>623281684</span></p>
                                </li>
                            </ul>
                </div> 
                <div class="clear"></div>  
            </div>
            <div class="bottom">
                <div class="copyright">
                    <p>copyright 2016- all rights reserved</p>
                    <p>Project: <span>Jobz</span></p>
                </div>
                <ul class="list2">
                    <li><div class="twitter"></div></li>
                    <li><div class="facebook"></div></li>
                    <li><div class="vimeo"></div></li>
                    <li><div class="youtube"></div></li>
                </ul> 
            </div>
            <div class="clear"></div>
        </div>
      </div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</body>
</html>