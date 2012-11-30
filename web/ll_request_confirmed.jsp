<%-- 
    Document   : ll_request_confirmed
    Created on : 29 Nov, 2012, 8:42:48 PM
    Author     : rishabh
--%>

<%@page import="lrweb.CommonTasks"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lrweb.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="llbean" scope="session" class="lrweb.llbean" />
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
        <div id="content" style="width:90%">
            <div class="post1"  style="background: none">
                <h2 class="title">Learning License Form Submitted</h2>
                <div class="entry">
                    <%
                    int llno=CommonTasks.getNextLLApplicationNo();
                    try{
                        java.util.Date today=new java.util.Date();
                        Connection con=DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("insert into LearningLicenseJSP values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        pstmt.setInt(1,llno );                                                    
                        String str=String.format("%1$tm-%1$td-%1$ty", today);
                        pstmt.setString(2,str);
                        pstmt.setInt(3, 1);
                        pstmt.setString(4,llbean.getName());
                        pstmt.setString(5,llbean.getFathername());
                        pstmt.setString(6,llbean.getBirthdate());
                        pstmt.setString(7,llbean.getPermanentAddress());
                        pstmt.setString(8,llbean.getTemporaryAddress());
                        pstmt.setString(9,llbean.getQualification());
                        pstmt.setString(10,llbean.getContactNumber());
                        pstmt.setString(11,llbean.getEmailAddress());
                        pstmt.setString(12,llbean.getIdentificationMark());
                        pstmt.setString(13,llbean.getBloodgroup());
                        pstmt.setString(14,llbean.getVehicleType());
                        pstmt.setString(15,llbean.getMedicalCertificateIssueDate());
                        pstmt.setString(16,llbean.getIssuingDoctorName());
                        pstmt.setString(17,llbean.getResidenceProof());
                        pstmt.setString(18,llbean.getAgeProof());
                        pstmt.executeUpdate();
                        
                        }catch(SQLException ob)
                        {
                            out.print(ob);
                            
                        }catch(ClassNotFoundException ob){
                            out.print(ob);
                        }
                    %>
                    <p>Your Form has been Successfully Received.</p>
                    <p>Kindly note down the Application No.<%= llno %></p>
                    <p>This Number must be produced before the Officer when you visit our Premises</p>
                </div>
                </div>
            </div>
            <jsp:include page="/WEB-INF/footer.jsp" />
        </div>
    </body>
</html>