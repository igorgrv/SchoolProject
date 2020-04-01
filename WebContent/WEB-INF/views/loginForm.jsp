<link rel="stylesheet" href="resources/css/myStyle.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<%@	taglib uri="http://www.springframework.org/tags/form" prefix="form"	%>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>


<div class="fadeInDown login-page">
	<div class="form">
		<form class="login-form" action="logIn" method="post">
			<form:errors path="user.login" cssStyle="color:red"/>
			<input type="text" placeholder="User" name="login" autocomplete="off" autofocus/> 
			
			<input type="password" placeholder="Password" name="pass" autocomplete="false"/>
			<button>logIn</button>
		</form>
	</div>
</div>