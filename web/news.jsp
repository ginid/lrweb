<%-- 
    Document   : news
    Created on : Nov 28, 2012, 10:05:20 PM
    Author     : Mahajan
--%>

<%@page import="lrweb.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">            
            <div class="post1" style="background: none;">
                <h2 class="title">News</h2>
                <div class="entry">
                    <% 
                        Connection con=DatabaseConnection.getConnection();
                        Statement st=con.createStatement();
                        ResultSet val=st.executeQuery("use l_r select * from news order by NNO desc");
                        while(val.next())
                        { String t=val.getString("Title");String desc=val.getString("Description");
                    %>
                    <p class="Description"></p>
                                <p class="Questions"><% out.println(t); %></p>
                                <p class="Answers"><% out.println(desc); %></p>
            <% } %>
                </div>
            </div>
        </div>        
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
