<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<head>
	<title>Customer confirm</title>
</head>

<body>
	Customer ${customer.firstName} ${customer.lastName} is confirmed!
	
	<br><br>
	
	Has ${customer.freePass}
	
	<br><br>
	
	Zip code ${customer.zipCode}
	
	<br><br>
	
	Couse code ${customer.courseCode}
</body>