<%-- 
    Document   : ncv_request_confirmed
    Created on : 6 Dec, 2012, 10:24:36 PM
    Author     : rishabh
--%>
<%@page import="lrweb.lrbean"%>
<%@page import="lrweb.CommonTasks"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lrweb.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="ncvbean" scope="session" class="lrweb.ncvbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Class Vehicle Addition Confirmation</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
            <div class="post1"  style="background: none">
                <h2 class="title">New Class Vehicle Addition Form Submitted</h2>
                <div class="entry">
                    <%
                    int ncvno=CommonTasks.getNextNCVApplicationNo();
                    try{
                        java.util.Date today=new java.util.Date();
                        Connection con=DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("insert into NewClassVehicleAdditionJSP values(?,?,?,?,?,?)");
                        pstmt.setInt(1,ncvno );                                                    
                        String str=String.format("%1$tm-%1$td-%1$ty", today);
                        pstmt.setString(2,str);
                        pstmt.setString(3, ncvbean.getLicenseNumber());
                        pstmt.setString(4,ncvbean.getVehicleType());
                        pstmt.setString(5,ncvbean.getMc());
                        pstmt.setString(6,ncvbean.getDl());                        
                        pstmt.executeUpdate();
                        %>
                        <p>Your Form has been Successfully Received.</p>
                        <p>Kindly note down the Application No.<%= ncvno %></p>
                        <p>This Number must be produced before the Officer when you visit our Premises</p>
                        <%
                        }catch(SQLException ob)
                        {
                            out.print("<p><strong><underline>An Error Occured</underline></strong></p><p><strong>Error Description:&nbsp;</strong>"+ob+"</p>");
                            
                        }catch(ClassNotFoundException ob){
                            out.print("<p><strong>An Error Occured</strong></p><p><strong>Error Description:&nbsp;</strong>"+ob+"</p>");
                        }
                    %>
                    
                </div>
                </div>
            </div>
            <jsp:include page="/WEB-INF/footer.jsp" />
        </div>
    </body>
</html>