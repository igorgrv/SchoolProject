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
						<th>NAME</th>
						<th>STATUS</th>
						<th>START DATE</th>
						<th colspan="3">ACTIONS</th>
					</tr>
				</thead>
				<c:forEach items="${courses}" var="course">
					<tbody>
						<tr align="center">
							<td>${course.id}</td>
							<td>${course.name}</td>
							<c:if test="${course.active eq false }">
								<td  id="active_${course.id }" class="table-warning">INACTIVATED</td>
							</c:if>
							
							<c:if test="${course.active eq true }">
								<td class="table-success">ACTIVATED</td>
							</c:if>
							
							<td><fmt:formatDate value="${course.startDate.time}" pattern="dd/MM/yyyy"/> </td>
							<!-- REMOVE WITH SPRING <td id="remove_${curso.id }"><a href="removeCurso?id=${curso.id }">Remover</a></td> -->
							
							<td id="remove_${course.id}">
								<a href="#" onclick="removeNow(${course.id })">
									Remove
								</a>
							</td>
							<td>
								<a href="editCourse?id=${course.id }">
									Edit
								</a>
							</td>							
							
							<c:if test="${course.active eq false }">
								<td >
									<a href="#" onclick="activeNow(${course.id})" id="tdActive_${curso.id}">
									 	Active the course
									</a>
								</td>
							</c:if>	
							
							<c:if test="${course.active eq true }">
<!-- 								<td>						 -->
									 	
<!-- 								</td> -->
							</c:if>	
													
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		
	<c:import url="footer.jsp" />