<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation</title>
</head>

<body>

	The student is confirmed: ${student.firstName}  ${student.lastName} is from ${student.country}.
	<br>
	Favorite Programming Language is: ${student.favoriteLanguage}
	<br>
	Used operating systems: 
	
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li>${temp} </li>
		</c:forEach>
	</ul>

</body>
</html>