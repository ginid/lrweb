<%-- 
    Document   : recieve_user
    Created on : 22 Nov, 2012, 12:45:33 PM
    Author     : rishabh
--%>

<%@page import="org.apache.coyote.RequestGroupInfo"%>
<%@page import="com.sun.org.apache.regexp.internal.REUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="lrweb.*" import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">
            <div class="post1"  style="background: none">
                <div class="entry">
                    <%
                    try
                    {  
                        Connection con=DatabaseConnection.getConnection();
                        PreparedStatement pstmt=con.prepareStatement("insert into UserJsp values(?,?,?,?,?,?)");
                        pstmt.setString(1, request.getParameter("tn"));                                                    
                        pstmt.setString(2, request.getParameter("ddob"));
                        pstmt.setString(3, request.getParameter("tea"));
                        pstmt.setString(4,request.getParameter("tun"));
                        pstmt.setString(5,request.getParameter("tp"));
                        pstmt.setString(6,null);
                        int result=0;                        
                        if(request.getParameter("tp").equals(request.getParameter("tcp")))
                            result=pstmt.executeUpdate();
                        else
                        {
                          out.println("Passwords did not match, Please <a href=\"NewUser.jsp\">Register</a> again");  
                        }
                        if(result==1)
                        {
                        %>
                        <h2 class="title">Congratulations</h2>
                        <p>You have successfully registered</p>
                        <p>Your Username is: <%= request.getParameter("tun")%></p>
                        <p>Your Password is: <%= request.getParameter("tp")%></p>
                        <%
                        }
                        }
                        catch(SQLException ob)
                        {
                            if(ob.toString().contains("PRIMARY KEY")){
                                out.println("User already exists. Please <a href=\"NewUser.jsp\">Register</a> with other Username");
                            }
                            else{
                                out.print(ob);
                            }
                        }
                        catch(ClassNotFoundException ob){
                            out.print(ob);
                        }                         
                    %>
                </div>
            </div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
