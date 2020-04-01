<!-- 
@igorgrv author 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"	%>

	<c:import url="header.jsp" />
	
	<div class="container">
	
		<h2>Course: ${course.name} - ID: ${course.id}</h2>
		<div class="form-group row">
			<label for="dataCadastro" class="col-sm-2 col-form-label">Course register date:</label>
			<div class="col-lm-4">
				<input class="form-control" name="registerDate" type="text" placeholder="<fmt:formatDate value="${course.registerDate.time}" pattern="dd/MM/yyyy"/>" readonly>
			</div>
		</div>
		<hr>
		
		<form action="updateCourse" method="post">		
			<input type="hidden" name="id" value="${course.id}">
			
			<div class="form-group row">
				<label for="name" class="col-sm-2 col-form-label">Course name:</label>
				<div class="col-lm-4">
					<input type="text" name="name" value="${course.name}" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label for="startDate" class="col-sm-2 col-form-label">Start date:</label>
				<div class="col-lm-4">
					
					 <input type="text" id="dataCalendar" class="form-control" name="startDate" value=' <fmt:formatDate value="${course.startDate.time}" pattern="dd/MM/yyyy"/> '> 
				</div>
			</div>
			
			<div class="form-check">
				<input type="checkbox" name="active" value="true "${course.active ? 'checked' : ''} class="form-check-input">
				<label class="form-check-label" for="courseAtivo">
					Is the course active?
				</label>				
			</div>
			<br>
			
			<input type="submit" value="Update" class="btn btn-outline-success">
		</form>
	</div>

	<c:import url="footer.jsp" />