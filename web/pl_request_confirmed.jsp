<%-- 
    Document   : pl_request_confirmed
    Created on : 3 Dec, 2012, 8:32:37 PM
    Author     : rishabh
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="lrweb.CommonTasks"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lrweb.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="plbean" scope="session" class="lrweb.plbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">
            <div class="post1"  style="background: none">
                <h2 class="title">Learning License Form Submitted</h2>
                <div class="entry">
                    <%
                    int plno=CommonTasks.getNextPLApplicationNo();
                    try{
                        java.util.Date today=new java.util.Date();
                        Connection con=DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("insert into PermanentLicenseJSP values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1,plno );                                                    
                        String str=String.format("%1$tm-%1$td-%1$ty", today);
                        pstmt.setString(2,str);
                        pstmt.setInt(3, 1);
                        pstmt.setString(4,plbean.getVehicleType());
                        pstmt.setInt(5, plbean.getLearningLicenseNo());
                        pstmt.setString(6,plbean.getName());
                        pstmt.setString(7,plbean.getFathername());
                        pstmt.setString(8,plbean.getDateOfBirth());
                        pstmt.setString(9,plbean.getPermanentAddress());
                        pstmt.setString(10,plbean.getTemporaryAddress());
                        pstmt.setString(11,plbean.getQualification());
                        pstmt.setString(12,plbean.getContactNumber());
                        pstmt.setString(13,plbean.getEmailAddress());
                        pstmt.setString(14,plbean.getGender());
                        pstmt.setString(15,plbean.getIdentificationMark());
                        pstmt.setString(16,plbean.getBloodgroup());
                        pstmt.setString(17,plbean.getDateOfBirth());
                        pstmt.setString(18,plbean.getTestingAuthority());
                        pstmt.setString(19,plbean.getResultOfTest());
                        pstmt.setString(20,plbean.getDrivingTestFailedBefore());
                        pstmt.setString(21,plbean.getLearningLicenseRTO());
                        pstmt.executeUpdate();
                        %>
                        <p>Your Form has been Successfully Received.</p>
                        <p>Kindly note down the Application No.<%= plno %></p>
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
