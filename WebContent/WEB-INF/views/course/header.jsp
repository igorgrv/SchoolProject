<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="resources/css/myStyle.css">
		<link rel="stylesheet" href="resources/css/open-iconic-bootstrap.min.css" />
		<link rel="stylesheet" href="resources/css/jquery.css" />
		<link rel="stylesheet" href="resources/css/jquery-ui.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		
		<script src="resources/js/jquery.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/jquery-ui.min.js"></script>
		
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
		
		<script type="text/javascript">
		$(document).ready(function () {
			$('.dmenu').hover(function () {
			        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
			    }, function () {
			        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
			    });
		});
		</script>
	</head>
	
	<body>			
		<nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
			  <a class="navbar-brand" href="index">Igor's School</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			
			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="index">
			          <i class="fa fa-home"></i>
			          Home
			          <span class="sr-only">(current)</span>
			        </a>
			      </li>
			      
			      <li class="nav-item dropdown dmenu">
			        <a class="nav-link dropdown-toggle" href="#" href="#" id="navbardrop" data-toggle="dropdown">
			          <i class="fa fa-graduation-cap"></i>Courses
			        </a>
			        <div class="dropdown-menu sm-menu">
			          <a class="dropdown-item" href="listCourse">
			          	<i class="fa fa-table"></i>List of courses
			          </a>
			          
			          <div class="dropdown-divider"></div>
			          <a class="dropdown-item" href="formCourse">
			          	<i class="fa fa-plus-circle"></i>
			          	Create a course
			          </a>
			        </div>
			        
			      </li>
			     
			    </ul>
			    
			    <ul class="navbar-nav ">
			  	</ul>
			  	
			  	<!-- Button trigger modal -->
				<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModalCenter">
				 	<span class="oi oi-account-logout"></span>&nbsp; Log out
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Log out <span class="oi oi-account-logout"></span></h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <i class="fa fa-question-circle"></i>Are you sure that you want to leave?
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
				        <a href="logout" class="btn btn-info">Log out</a>
				      </div>
				    </div>
				  </div>
				</div>
		        
			  </div> 
			</nav>
			<br>