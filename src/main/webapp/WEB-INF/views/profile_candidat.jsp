<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <title>JObz</title>
    <!-- Tell the browser to be responsive to screen width -->
   
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href='<spring:url value="/resources/bootstrap/bootstrap.min.css"></spring:url>'>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href='<spring:url value="/resources/dist/AdminLTE.min.css"></spring:url>'>
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href='<spring:url value="/resources/dist/_all-skins.min.css"></spring:url>'>

    <style type="text/css">
     .add,body,.main-header{
     background-color: #e6f9ff;

     }
     #user-profile{
      padding-left: 5px;
     }
      .navbar{

    color:  green;
     }
    </style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<jsp:include page="header.jsp"></jsp:include>
	<c:if test="${not empty succes_expereice }">
		<div class="alert alert-success">
  			<p align="center"><strong>Success!</strong> ${succes_expereice }</p>
				</div>
	</c:if>
	<c:if test="${not empty succes_skills }">
		<div class="alert alert-success">
  			<p align="center"><strong>Success!</strong> ${succes_expereice }</p>
				</div>
	</c:if>
	<section class="content">

          <div class="row ">
          	<div class="col-md-3 add">
          		<div class="box box-primary">
                	<div class="box-body box-profile">
                  		<img class="profile-user-img img-responsive img-circle" src='<spring:url value="/resources/candidat_image.jpeg"></spring:url>' alt="User profile picture">
                  			<h3 class="profile-username text-center">${candidat.nom} ${candidat.prenom }</h3>
                  			<p class="text-muted text-center">${candidat.poste }</p>

                  			<ul class="list-group list-group-unbordered">
                    			
                    			<li class="list-group-item">
                     				 <b>Email</b> <a class="pull-right">${candidat.email }</a>
                    			</li>
                  			</ul>

                  			<a href="#" class="btn btn-primary btn-block"><b>Edit profile</b></a>
                	</div><!-- /.box-body -->
              	</div><!-- /.box -->
             </div>
             <div class="col-md-9">
             	<div class="nav-tabs-custom">
             		<ul class="nav nav-tabs">
             		<c:if test="${not empty id_candidat }">
             			<li class="active"><a href="#activity" data-toggle="tab">Informations génerales</a></li>
             		</c:if>
                  		
                  		<li><a href="#timeline" data-toggle="tab">Mes Expériences</a></li>
                  		<li><a href="#settings" data-toggle="tab">Mes Compétences</a></li>
                	</ul>
                	<div class="tab-content">
                		<div class="active tab-pane" id="activity">
                			<div class="row">
            					<div class="col-xs-12">
              						<div class="box">
                						<div class="box-header">
                  							<h3 class="box-title">Mes Candiadatures</h3>
                  						</div><!-- /.box-header -->
                						<div class="box-body table-responsive no-padding">
                  							<table class="table table-hover">
                   								 <tr>
                      								<th>Nom de l'offre</th>
                      								<th>description</th>                     
                    							</tr>
                    							<c:forEach items="${offres }" var="offre">
                    								<tr>
                      								<td><a href='<spring:url value="/offre/${offre.id }"></spring:url>'>${offre.nom }</a></td>
                      								<td><span class="label label-info">${offre.description}</span></td>
                                        		</tr>
                    							</c:forEach>
                    							
                  							</table>
                						</div><!-- /.box-body -->
              						</div><!-- /.box -->
            					</div>
          					</div>
                		</div>
                		<div class="tab-pane" id="timeline">
                			<ul class="timeline timeline-inverse">
                				<c:forEach items="${experiences }" var="experience">
                					<!-- timeline time label -->
                      			<li class="time-label">
                        			<span class="bg-red">
                          				${experience.date_debut } to ${experience.date_fin }
                        			</span>
                     	 		</li>
                      				<!-- /.timeline-label -->
                      				<!-- timeline item -->
                      			<li>
                        			<i class="fa fa-envelope bg-blue"></i>
                        			<div class="timeline-item">
                          				<span class="time"> </span>
                          				<h3 class="timeline-header"><a href="#">Description</a> </h3>
                          				<div class="timeline-body">
                           					 ${experience.description}
                         	 			</div>
                        				
                        			</div>
                      			</li>
		                      <!-- END timeline item -->
		                      <!-- timeline item -->
                     
	                      		<li>
	                        		<i class="fa fa-user bg-aqua"></i>
	                        		<div class="timeline-item">                      
                          				<h3 class="timeline-header no-border"><a href="#">Nom de l'organisme d'accueil</a> <b class="pull-right">${experience.nom_organisation }</b></h3>
                        			</div>
                      			</li>

                       			<li>
                        			<i class="fa fa-user bg-aqua"></i>
                        			<div class="timeline-item">                      
                          				<h3 class="timeline-header no-border"><a href="#">Type de l'expérience</a> <b class="pull-right">${experience.type }</b></h3>
                        			</div>
                      			</li>
                				</c:forEach>
                      			<div class="top-big-link">
                            	<a class="btn btn-link-1" href="/offre/candidat/addExperience">ajouter une éxperience</a>
                            	<a class="btn btn-link-1" href="/offre/candidat/addSkills">ajouter une compétence</a>
                            </div>
					  		</ul>
                		</div>
                		<div class="tab-pane" id="settings">
                			<div class="row">
                				 <div class="col-xs-12">
              						<div class="box">
                						<div class="box-header">
                  							<h3 class="box-title">Mes compétences</h3>
                						</div><!-- /.box-header -->
                						<div class="box-body table-responsive no-padding">
                  							<table class="table table-hover">
                    							<tr>
								                      <th>compétence</th>
                     								  <th>Domaine</th>
                      								  <th>Niveau de maitrise</th>
                    							</tr>
                    							<c:forEach items="${ competences}" var="competence">
                    								<tr>
								                      <td>${competence.nom }</td>
								                      <td>${competence.domaine }</td>
								                      <td><span class="label label-warning">${competence.maitrise}</span></td>                     
                    							</tr>     
                    							</c:forEach>
                    							              
                  							</table>
                  							<div class="top-big-link">
                            	<a class="btn btn-link-1" href="/offre/candidat/addExperience">ajouter une éxperience</a>
                            	<a class="btn btn-link-1" href="/offre/candidat/addSkills">ajouter une compétence</a>
                            </div>
                						</div><!-- /.box-body -->
              						</div><!-- /.box -->
            					  </div>
                			</div>
                		</div>
                	</div>
             	</div>
             </div>
               
              	
          </div>
    </section>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    
    
</body>
</html>