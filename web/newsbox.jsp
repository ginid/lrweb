<%-- 
    Document   : news
    Created on : Nov 27, 2012, 9:17:54 PM
    Author     : Mahajan
--%>

<%@page import="lrweb.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="sidebar" class="newsb" style=" height:200px; overflow:hidden;">
    <ul>
        <li>
            <a href="news.jsp"><h2>News</h2></a></li>
    </ul>
    <iframe id="NewsWindow" src="news_win.jsp" width="200" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"></iframe>
    <%--<ul>
        <li>
            <a href="news.jsp"><h2>News</h2></a>
            <div id="newsbox" onMouseover="scrollspeed=0" onMouseout="scrollspeed=current" OnLoad="NewsScrollStart();">
                <ul>
                        <% 
                            Connection con=conn.scon();
                            Statement st=con.createStatement();
                            ResultSet val=st.executeQuery("use l_r select NNo,Title,Date from news order by NNo desc");
                               while(val.next())
                            { String t=val.getString("Title");
                              String d=val.getString("Date");
                        %>
                        <li class="newsh">
                            <%=d%>&nbsp;<a href=""><h3><%=t%></h3></a>
                        </li>
                        <% } %>
                </ul>
            </div>
        </li>
    </ul>--%>
        
</div>