<%-- 
    Document   : rr_request_confirmed
    Created on : 8 Dec, 2012, 9:31:28 PM
    Author     : rishabh
--%>

<%@page import="lrweb.CommonTasks"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lrweb.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="rrbean" scope="session" class="lrweb.rrbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Renewal</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
            <div class="post1"  style="background: none">
                <h2 class="title">Learning License Form Submitted</h2>
                <div class="entry">
                    <%
                    int rrno=CommonTasks.getNextRRApplicationNo();
                    try{
                        java.util.Date today=new java.util.Date();
                        Connection con=DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("insert into RegistrationRenewalJSP values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1,rrno );                                                    
                        String str=String.format("%1$tm-%1$td-%1$ty", today);
                        pstmt.setString(2,str);
                        pstmt.setString(3, rrbean.getName());
                        pstmt.setString(4,rrbean.getRegistrationNumber());
                        pstmt.setString(5,rrbean.getDateOfIssue());
                        pstmt.setString(6,rrbean.getDateOfExpiry());
                        pstmt.setString(7,rrbean.getPresentAddress());
                        pstmt.setString(8,rrbean.getClassOfVehicle());
                        pstmt.setString(9,rrbean.getVehicleType());
                        pstmt.setString(10,rrbean.getTypeOfBody());
                        pstmt.setString(11,rrbean.getMakersName());
                        pstmt.setInt(12,Integer.parseInt(rrbean.getYearOfManufacture()));
                        pstmt.setInt(13,Integer.parseInt(rrbean.getNoOfCylinders()));
                        pstmt.setInt(14,Integer.parseInt(rrbean.getCubicCapacity()));
                        pstmt.setString(15,rrbean.getMakersClassification());
                        pstmt.setString(16,rrbean.getEngineNumber());
                        pstmt.setInt(17,Integer.parseInt(rrbean.getSeatingCapacity()));
                        pstmt.setFloat(18,Float.parseFloat(rrbean.getUnladenWeight()));
                        pstmt.setString(19,rrbean.getFuelUsed());
                        pstmt.executeUpdate();
                        %>
                        <p>Your Form has been Successfully Received.</p>
                        <p>Kindly note down the Application No.<%= rrno %></p>
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