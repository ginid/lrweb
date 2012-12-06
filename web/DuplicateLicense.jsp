<%-- 
    Document   : DuplicateLicense
    Created on : 19 Nov, 2012, 9:12:38 PM
    Author     : rishabh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="dlbean" scope="session" class="lrweb.dlbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Duplicate License</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>
            function populateFields(){
                document.dlfrm.tapa.value="<jsp:getProperty name="dlbean" property="permanentAddress" />";
                document.dlfrm.dlo.value="<jsp:getProperty name="dlbean" property="losingDate" />";
            }
            function validateForm(){
                if(document.dlfrm.tn.value==""){
                    alert("A Name must be entered");
                    document.dlfrm.tn.focus();
                    return false;
                }
                if(document.dlfrm.tfn.value==""){
                    alert("Father's Name must be entered");
                    document.dlfrm.tfn.focus();
                    return false;
                }
                if(document.dlfrm.tapa.value==""){
                    alert("Permanent Address must be entered");
                    document.dlfrm.tapa.focus();
                    return false;
                }
                if(document.dlfrm.dlo.value==""){
                    alert("You should mention date of losing License");
                    document.dlfrm.dlo.focus();
                    return false;
                }
                if(document.dlfrm.tlc.value==""){
                    alert("Losing circumstances must be entered");
                    document.dlfrm.tlc.focus();
                    return false;
                }
               
            }
        </script>
    </head>
    <body onload="populateFields()">
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Duplicate License Form</h2>                                
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <% }
                                else
                                { %>
                                <form name="dlfrm" action="receive_dl_request.jsp" method="POST">
                                    <fieldset>
                                        <p style="text-decoration: underline"><strong>Personal Information</strong></p> 
                                        <div class="box">
                                            <p><label>Name:</label><input type="text" name="tn" value='<jsp:getProperty name="dlbean" property="name" />' /></p>
                                            <p><label>Father's Name:</label><input type="text" name="tfn" value='<jsp:getProperty name="dlbean" property="fathername" />' /></p>
                                            <p><label>Permanent Address:</label><textarea name="tapa"></textarea></p>
                                        </div>
                                        <p><label>License lost or destroyed on:</label><input type="date" name="dlo"  /></p>
                                        <p><label>License lost or destroyed under circumstances:</label><input type="text" name="tlc" value='<jsp:getProperty name="dlbean" property="losingCircumstances" />' /></p>
                                        <input class="button" type="submit" value="Submit" onclick="return validateForm()" /><input class="button" type="reset" value="Clear" />
                                    </fieldset>
                                </form>
                                <% } %>
                            </div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
