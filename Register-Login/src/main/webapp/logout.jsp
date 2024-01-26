<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>

<%
        // Retrieve the session object
        HttpSession session3 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session3 != null) {
            // Get the username from the session
            session3.invalidate();
        }
        
            // Redirect to the login page if the session is not valid
            response.sendRedirect("index.jsp");
        
    %>
</body>
</html>