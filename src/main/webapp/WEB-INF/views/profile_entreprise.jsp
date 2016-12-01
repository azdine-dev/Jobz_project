<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
     background-color: #f7ffe6;

     }
     #user-profile{
      padding-left: 5px;
     }
      .navbar{

    color:  green;
     }
    </style>
<title>JobZ</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<jsp:include page="header.jsp"></jsp:include>
<c:if test="${not empty succes}">
		<div class="alert alert-success">
  			<p align="center"><strong>Success!</strong> ${succes}</p>
				</div>
	</c:if>




    
        <section class="content">

          <div class="row ">
            <div class="col-md-3 add">

              <!-- Profile Image -->
              <div class="box box-primary">
                <div class="box-body box-profile">
                  <img class="profile-user-img img-responsive img-circle" src='<spring:url value="/resources/entreprise_image.jpg"></spring:url>' alt="User profile picture">
                  <h3 class="profile-username text-center">${entreprise.nom }</h3>
                  <p class="text-muted text-center">${entreprise.domaine }</p>

                  <ul class="list-group list-group-unbordered">
                    <li class="list-group-item">
                      <b>ville</b> <a class="pull-right">${entreprise.ville }</a>
                    </li>
                    <li class="list-group-item">
                      <b>Email</b> <a class="pull-right">${entreprise.email }</a>
                    </li>
                   
                  </ul>
				  <c:if test="${not empty id_entreprise }">
				  	<a href='<spring:url value="/offre/addoffre"></spring:url>' class="btn btn-primary btn-block"><b>Proposer une offre</b></a>
				  </c:if>
                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->

              <!-- About Me Box -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title"><b>Description</b></h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  
                  <p class="text-muted">
                   ${entreprise.description}.
                  </p>

                  
                  
               </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
            <div class="col-md-9">
              <div class="nav-tabs-custom">
                
                <div class="tab-content">
                  <div class="active tab-pane" id="activity">
                    <!-- Post -->
             
 <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Mes Offres</h3>
                  <div class="box-tools">
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                      <th>Nom de l'offre</th>
                      <th>type</th>
                      <th>ville</th>
                      <th>date d'ajout</th>
  
                      
                    </tr>
                    <c:forEach items="${offres}" var="offre">
                    	<tr>
                      		<td><a href='<spring:url value="/offre/${offre.id }"></spring:url>'>${offre.nom }</a></td>
                      		<td><span class="label label-info">${offre.type_offre }</span></td>
                      		<td>${offre.ville }</td>
                      		<td>${offre.date }</td> 
                      		<c:if test="${ not empty id_entreprise}">
                      			<td class='deleterow'><a href='<spring:url value="/entreprise/deleteoffre/${offre.id }"></spring:url>'><div class='glyphicon glyphicon-remove'></div></a></td>
                      		</c:if>
                      		
                      		
                    	</tr>
                    </c:forEach>
               
                  </table>
                 
                </div> <!-- /.box-body -->
              </div> <!-- /.box -->

            </div>
          </div>
                  <!-- /.post -->
         </div> <!-- /.tab-pane -->

     <div class=" tab-pane" id="timeline">
                   
             
    
                 <!-- /.post -->
         </div><!-- /.tab-pane -->
          
                


                    </div><!-- /.tab-pane -->
                </div><!-- /.tab-content -->
             </div> <!-- /.nav-tabs-custom -->
            </div><!-- /.col -->
          </div><!-- /.row -->

        </section><!-- /.content -->
    
 

      
     <!-- <div/><!-- /.content-wrapper -->
    




      
      <!-- Control Sidebar -->
     
          
      <!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      
   <!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/demo.js"></script>


	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>


</body>
</html>