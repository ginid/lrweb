<%-- 
    Document   : PermanentLicense
    Created on : 20 Nov, 2012, 12:41:54 PM
    Author     : rishabh
--%>

<%@page import="lrweb.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Privilege</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <% if(session.getAttribute("name")==null && session.getAttribute("userType")!="admin"){%>
        <div id="content">
			<div class="post1"  style="background: none">
                                <h2 class="title">Manage Users</h2>
                            <div class="entry">
        <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                            </div>
                        </div>
        </div>
        <% }               
        else{ %>
        <div id="content" style="width:700px">
            <div class="post1" style="background: none">
                                <h2 class="title">Change User Privilege</h2>
                            <div class="entry">
                                <form name="ChangePrivilege" action="none" method="POST">                                    
                                    <fieldset>
                                        <% 
                                        Connection con=DatabaseConnection.getConnection();
                                        Statement st=con.createStatement();
                                        ResultSet val=st.executeQuery("use l_r select Name from UserJSP");
                                    %>
                                        <p><label>Name :</label><select name="name">
                                                    <%while(val.next())
                                                    { String n=val.getString("Name");%>
                                                    <option value= <%=n%> > <%=n%> </option>
                                                    <% } %>
                                                </select></p>
                                        <p><label>Change Privilege To :</label><select name="class">
                                                <option value="admin">Administrator</option>
                                                <option value="user">Simple User</option>
                                            </select></p>                                       
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