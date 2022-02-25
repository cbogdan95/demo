<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer registration form</title>
<style>
	.error {color:red}
</style>
</head>
<body>

	<i>Fill out the form!</i>
	<form:form action="processForm" modelAttribute="customer">
		First name: 
		<form:input path="firstName"/>
		
		<br><br>
		
		Last name (*):
		<form:input path="lastName"/>
		
		<form:errors path="lastName" class="error"/>
		
		<br><br>
		
		<input type="submit" name="Submit"/>
	</form:form>

</body>
</html>