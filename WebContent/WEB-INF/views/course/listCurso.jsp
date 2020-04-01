<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

		<c:import url="header.jsp" />

	
		<div class="container">
			<table class="table table-hover table-bordered">
				<thead>
					<tr align="center">
						<th>ID</th>
						<th>NOME</th>
						<th>STATUS</th>
						<th>DATA INICIO</th>
						<th colspan="3">AÇÕES</th>
					</tr>
				</thead>
				<c:forEach items="${curso }" var="curso">
					<tbody>
						<tr align="center">
							<td>${curso.id}</td>
							<td>${curso.nome}</td>
							<c:if test="${curso.ativo eq false }">
								<td  id="ativo_${curso.id }" class="table-warning">INATIVO</td>
							</c:if>
							
							<c:if test="${curso.ativo eq true }">
								<td class="table-success">ATIVO</td>
							</c:if>
							
							<td><fmt:formatDate value="${curso.dataInicio.time}" pattern="dd/MM/yyyy"/> </td>
							<!-- REMOVER COM SPRING <td id="remove_${curso.id }"><a href="removeCurso?id=${curso.id }">Remover</a></td> -->
							
							<td id="remove_${curso.id}">
								<a href="#" onclick="removeAgora(${curso.id })">
									Remover
								</a>
							</td>
							<td>
								<a href="editCurso?id=${curso.id }">
									Editar
								</a>
							</td>							
							
							<c:if test="${curso.ativo eq false }">
								<td >
									<a href="#" onclick="ativaAgora(${curso.id})" id="tdAtiva_${curso.id}">
									 	Ativar Curso
									</a>
								</td>
							</c:if>	
							
							<c:if test="${curso.ativo eq true }">
								<td>						
									 	
								</td>
							</c:if>	
													
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		
	<c:import url="footer.jsp" />