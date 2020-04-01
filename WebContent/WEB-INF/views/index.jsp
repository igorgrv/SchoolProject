<!-- 
@igorgrv author 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	
		<c:import url="curso/header.jsp" />
		
		<h2>Bem vindo, ${usuarioLogado.login}</h2><hr>
			
		
		<c:import url="curso/footer.jsp" />