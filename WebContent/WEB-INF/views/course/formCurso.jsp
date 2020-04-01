<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"	%>
<%@	taglib uri="http://www.springframework.org/tags/form" prefix="form"	%>


	<c:import url="header.jsp" />
	
	<div class="container">
	
		
		<form action="addCurso" method="post">			
			
			<div class="form-group row">
				<label for="nomeCurso" class="col-sm-2 col-form-label">Nome do Curso: </label>
				<div class="col-sm-4">
					<input type="text" name="nome" class="form-control" autocomplete="off">
				</div>
				<form:errors path="cursos.nome" cssStyle="color:red"/>	
			</div>

			<div class="form-group row">
				<label for="dataInicio" class="col-sm-2 col-form-label">Data de início:</label>	
				<div class="col-sm-4">
					<!--<dateCalendar:calendarTag id="dataInicio" value=""></dateCalendar:calendarTag>-->
					<input class="form-control col-md-6" type="text" name="dataInicio" value='<fmt:formatDate value="" pattern="dd/MM/yyyy"/>' >
				</div>
			</div>
			
			<div class="form-check">
				<input type="checkbox" name="ativo" value="true" class="form-check-input">
				<label class="form-check-label" for="cursoAtivo">
					Curso ativo
				</label>				
			</div>
			
			<br>
			<input type="submit" value="Adicionar" class="btn btn-outline-success">
		</form>
	</div>

	<c:import url="footer.jsp" />