<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
</head>
<body>
    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form>

	<h1>Welcome, <c:out value="${currentUser.firstName}"/></h1>
    
    <div class="content">
    	<h2>First Name: <c:out value="${currentUser.firstName}"/></h2>
    	<h2>Last Name: <c:out value="${currentUser.lastName}"/></h2>
    	<h2>Email: <c:out value="${currentUser.email}"/></h2>
		<h2>Sign Up Date: <fmt:formatDate pattern="MMMM dd, yyyy" value="${currentUser.createdAt}"/></h2>
		<h2>Last Sign-in: <fmt:formatDate pattern="MMMM dd, yyyy" value="${currentUser.updatedAt}"/></h2>
    </div>
</body>
</html>