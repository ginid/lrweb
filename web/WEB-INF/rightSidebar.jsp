<%-- 
    Document   : rightSidebar
    Created on : 16 Nov, 2012, 8:28:29 AM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="sidebar">
			<ul>
				<li>
					<h2>User Login</h2>
                                        <div id="loginbox">
                                        <form name="CheckLogin" action="LoginServlet" method="POST">
                                            <p class="login">Username:<input class="textbox" type="text" name="tun" value="" /></p>
                                            <p class="login">Password:<input class="textbox" type="password" name="tp" value="" /></p>
                                            <input class="button" type="submit" value="Login" /><input class="button" type="reset" value="Clear" />
                                        </form>
                                        <p style="text-align: center"><a href="NewUser.jsp" >New User? Register Here</a></p>
                                        </div>
                                </li>
				
			</ul>
</div>
<!-- end #sidebar -->