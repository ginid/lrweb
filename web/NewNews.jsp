<%-- 
    Document   : PermanentLicense
    Created on : 20 Nov, 2012, 12:41:54 PM
    Author     : rishabh
--%>

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
                                <h2 class="title">New News</h2>
                            <div class="entry">
        <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                            </div>
                        </div>
        </div>        
        <% }               
        else{ %>
        <div id="content" style="width:700px">
            <div class="post1" style="background: none">
                                <h2 class="title">New News</h2>
                            <div class="entry">
                                <form name="UpdateNews" action="NewsAdded.jsp" method="POST">                                    
                                    <fieldset>
                                    <p><label>Title :</label><input type="text" name="tit"/>
                                    <p><label>Description :</label><textarea name="desc" rows="5" cols="50"></textarea></p>
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