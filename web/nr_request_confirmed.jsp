<%-- 
    Document   : nr_request_confirmed
    Created on : 7 Dec, 2012, 11:18:16 AM
    Author     : rishabh
--%>

<%@page import="lrweb.nrbean"%>
<%@page import="lrweb.CommonTasks"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lrweb.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="nrbean" scope="session" class="lrweb.nrbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Registration</title>
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
                    int nrno=CommonTasks.getNextNRApplicationNo();
                    try{
                        java.util.Date today=new java.util.Date();
                        Connection con=DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("insert into NewRegistrationJSP values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1,nrno );                                                    
                        String str=String.format("%1$tm-%1$td-%1$ty", today);
                        pstmt.setString(2,str);
                        pstmt.setInt(3,0);
                        pstmt.setString(4,nrbean.getName());
                        pstmt.setString(5,nrbean.getFatherName());
                        pstmt.setInt(6,Integer.parseInt(nrbean.getAge()));
                        pstmt.setString(7,nrbean.getPermanentAddress());
                        pstmt.setString(8,nrbean.getTemporaryAddress());
                        pstmt.setString(9,nrbean.getNameOfVehicle());
                        pstmt.setString(10, nrbean.getVehicleNumber());
                        pstmt.setString(11, nrbean.getEngineNumber());
                        pstmt.setString(12, nrbean.getFuelType());
                        pstmt.setInt(13, Integer.parseInt(nrbean.getUnladenWeight()));
                        pstmt.setString(14, nrbean.getManufacturerName());
                        pstmt.setInt(15, Integer.parseInt(nrbean.getYearOfManufacture()));
                        pstmt.setInt(16, Integer.parseInt(nrbean.getNoOfCylinders()));
                        pstmt.setInt(17, Integer.parseInt(nrbean.getSeatingCapacity()));
                        pstmt.setString(18, nrbean.getBodyType());
                        pstmt.setInt(19, Integer.parseInt(nrbean.getHorsepower()));
                        pstmt.executeUpdate();
                        %>
                        <p>Your Form has been Successfully Received.</p>
                        <p>Kindly note down the Application No.<%= nrno %></p>
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