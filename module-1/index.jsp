<%-- Zachary Anderson --%>
<%-- JSP Demo Page --%>
<%-- This JSP page displays a welcome message and the current date and time. --%>
<%-- Module 1 Assignment : My First JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>My First JSP Page</title>
</head>
<body>

<h1>JSP Successfully Running</h1>

<p>
    Current Date and Time:
    <strong>
        <%
            java.util.Date now = new java.util.Date();
            out.println(now.toString());
        %>
    </strong>
</p>

</body>
</html>
