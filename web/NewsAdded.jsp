<%-- 
    Document   : pl_request_confirmed
    Created on : 3 Dec, 2012, 8:32:37 PM
    Author     : rishabh
--%>

<%@page import="lrweb.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="lrweb.CommonTasks"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lrweb.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
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
                <h2 class="title">New News Added</h2>
                <div class="entry">
                    <%
                    int nno=CommonTasks.getNextNewsNo();
                    try{
                        java.util.Date today=new java.util.Date();
                        Connection con= DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("use l_r insert into news values(?,?,?,?)");
                        pstmt.setInt(1,nno );                                                    
                        String str=String.format("%1$tm-%1$td-%1$ty", today);
                        pstmt.setString(2,str);
                        pstmt.setString(3, request.getParameter("tit"));
                        pstmt.setString(4,request.getParameter("desc"));
                        pstmt.executeUpdate();
                        %>
                        <p>New News Added Successfully</p>
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
