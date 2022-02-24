<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
		
		First Name: <form:input path="firstName"/>
		
		<br><br>
		
		LastName: <form:input path="lastName"/>
		
		<br><br>
		
		<form:select path="country"> 
			<form:options items="${student.countryOptions}" />
		</form:select>
	
	
		<br><br>
		
		Favorite Language:
		
		<form:radiobutton path="favoriteLanguage" value="Java" label="Java"/>
		<form:radiobutton path="favoriteLanguage" value="C#" label="C#"/>
		<form:radiobutton path="favoriteLanguage" value="C++" label="C++"/>
		<form:radiobutton path="favoriteLanguage" value="C" label="C"/>
		
		<br><br>
		
		Operating Systems:
		
		<form:checkbox path="operatingSystems" value="Linux" label="Linux"/>
		<form:checkbox path="operatingSystems" value="Mac OS" label="Mac OS"/>
		<form:checkbox path="operatingSystems" value="MS Windows" label="MS Windows"/>
		
		<br><br>
	
		<input type="submit" value="Submit" />
	
	
	</form:form>

</body>
</html>