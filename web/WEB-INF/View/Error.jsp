<%-- 
    Document   : Error
    Created on : Mar 28, 2024, 12:04:31 AM
    Author     : junaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String error = request.getParameter("error");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${error}</h1>
    </body>
</html>
