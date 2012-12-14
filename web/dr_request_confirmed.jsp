<%-- 
    Document   : dr_requset_confirmed
    Created on : 8 Dec, 2012, 6:27:42 PM
    Author     : rishabh
--%>
<%@page import="lrweb.lrbean"%>
<%@page import="lrweb.CommonTasks"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lrweb.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="drbean" scope="session" class="lrweb.drbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Duplicate License Confirmation</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
            <div class="post1"  style="background: none">
                <h2 class="title">Duplicate Registration Form Submitted</h2>
                <div class="entry">
                    <%
                    int drno=CommonTasks.getNextDRApplicationNo();
                    try{
                        java.util.Date today=new java.util.Date();
                        Connection con=DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("insert into DuplicateRegistrationJSP values(?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1,drno );                                                    
                        String str=String.format("%1$tm-%1$td-%1$ty", today);
                        pstmt.setString(2,str);
                        pstmt.setString(3, drbean.getMakeOfVehicle());
                        pstmt.setString(4,drbean.getCircumstances());
                        pstmt.setString(5,drbean.getCircumstancesDeclaration());
                        pstmt.setString(6,drbean.getDuplicateRegistrationApply());
                        pstmt.setString(7,drbean.getPoliceReportDate());
                        pstmt.setString(8,drbean.getName());
                        pstmt.setString(9,drbean.getPermanentAddress());
                        pstmt.executeUpdate();
                        %>
                        <p>Your Form has been Successfully Received.</p>
                        <p>Kindly note down the Application No.<%= drno %></p>
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