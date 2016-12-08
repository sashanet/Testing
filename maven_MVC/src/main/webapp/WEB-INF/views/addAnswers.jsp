<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>add Answers</h1>


<form:form modelAttribute="answer" action="saveAnswer" method="post">
<form:input path="text" placeholder ="name"/><br>
correct ?<form:checkbox path="correct" value="true"/><br>
<form:select path="question">

			<c:forEach var="questions" items="${questions}">
	
			<option value="${questions.id}">${questions.name}</option>

	</c:forEach>
</form:select> 

<button>Save</button>
</form:form>

</body>
</html>