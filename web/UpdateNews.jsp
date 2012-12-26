<%-- 
    Document   : PermanentLicense
    Created on : 20 Nov, 2012, 12:41:54 PM
    Author     : rishabh
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="lrweb.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New News</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <% if(session.getAttribute("name")==null && session.getAttribute("userType")!="Admin"){%>
        <div id="content">
			<div class="post1"  style="background: none">
                                <h2 class="title">Update News</h2>
                            <div class="entry">
        <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                            </div>
                        </div>
        </div>
        <jsp:include page="/WEB-INF/loginbox.jsp" />
        <% }               
        else{ %>
        <div id="content" style="width:700px">
            <div class="post1" style="background: none">
                                <h2 class="title">New News</h2>
                            <div class="entry">
                                <form name="UpdateNews" action="NewsAdded.jsp" method="POST">                                    
                                    <fieldset>
                                        <% 
                                        Connection con=DatabaseConnection.getConnection();
                                        Statement st=con.createStatement();
                                        ResultSet val=st.executeQuery("use l_r select * from news where NNO="+request.getParameter("tit"));
                                        while(val.next())
                                                    { int no=val.getInt("NNO");String t=val.getString("Title");String d=val.getString("Description");
                                        %>
                                        <p><label>Title :</label><input type="text" name="tit" value="<%=t%>"/>
                                        <script>
                                            function loadTextArea(){
                                                document.UpdateNews.desc.value="<%= d %>";
                                            }
                                        </script>
                                        <p><label>Description :</label><textarea onload="loadTextArea();" name="desc" rows="5" cols="50" ></textarea></p>
                                    <% } %>
                                        <input class="button" type="submit" value="Submit" /><input class="button1" type="reset" value="Clear" />
                                    </fieldset>
                                </form>
                                <%}%>
                            </div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>