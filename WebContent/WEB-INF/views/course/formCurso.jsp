<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"	%>
<%@	taglib uri="http://www.springframework.org/tags/form" prefix="form"	%>


	<c:import url="header.jsp" />
	
	<div class="container">
		<form action="addCouse" method="post">			
			<div class="form-group row">
				<label for="courseName" class="col-sm-2 col-form-label">Name of the course: </label>
				<div class="col-sm-4">
					<input type="text" name="name" class="form-control" autocomplete="off">
				</div>
				<form:errors path="cursos.nome" cssStyle="color:red"/>	
			</div>

			<div class="form-group row">
				<label for="startDate" class="col-sm-2 col-form-label">Start date:</label>	
				<div class="col-sm-4">
					<!--<dateCalendar:calendarTag id="dataInicio" value=""></dateCalendar:calendarTag>-->
					<input class="form-control col-md-6" type="text" name="startDate" value='<fmt:formatDate value="" pattern="dd/MM/yyyy"/>' >
				</div>
			</div>
			
			<div class="form-check">
				<input type="checkbox" name="active" value="true" class="form-check-input">
				<label class="form-check-label" for="activeCourse">
					Is it active
				</label>				
			</div>
			
			<br>
			<input type="submit" value="Add!" class="btn btn-outline-success">
		</form>
	</div>

	<c:import url="footer.jsp" />