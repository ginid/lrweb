<%-- 
    Document   : logoutaction
    Created on : 26 Nov, 2012, 10:02:43 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("name");
            session.removeAttribute("userType");
            session.invalidate();
            response.sendRedirect("home.jsp");
        %>
    </body>
</html>
