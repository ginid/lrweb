<%-- 
    Document   : header
    Created on : 16 Nov, 2012, 8:23:49 AM
    Author     : rishabh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <div id="logo">
		<h1>License and Registration</h1>
		<p><em>Regional Transport Office Web Portal</em></p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
                            <% if(session.getAttribute("name")!=null&&session.getAttribute("userType").equals("user"))
                                {
                            %>
                            <!-- Menu Items for user -->
                                <li><a href="user_home.jsp">Home</a></li>
				<li><a href="#">License</a>
                                    <ul>
                                                    <li><a href="pre_ll_page.jsp">Learning License</a></li>
                                                    <li><a href="pre_pl_page.jsp">Permanent License</a></li>
                                                    <li><a href="pre_lr_page.jsp">Renewal of License</a></li>                                                    
                                                    <li><a href="pre_dl_page.jsp">Duplicate License</a></li>
                                                    <li><a href="pre_ncv_page.jsp">Addition of New Class Vehicle</a></li>
                                    </ul>
                                </li>                                        
				<li><a href="#">Registration</a><ul>                                           
                                                    <li><a href="pre_nr_page.jsp">New Registration</a></li>
                                                    <li><a href="pre_dr_page.jsp">Duplicate Registration</a></li>
                                                    <li><a href="pre_rr_page.jsp">Registration Renewal</a></li>
                                     </ul>
                                </li>
				<li><a href="Complaint.jsp">Complaints</a></li>
                                <li><a href="FAQDL.jsp">FAQs</a></li>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
                             <% }
                                else if(session.getAttribute("name")!=null&&session.getAttribute("userType").equals("admin"))
                                {
                             %>
                            <!-- Menu Items for admin -->
                                <li><a href="user_home.jsp">Home</a></li>
				<li><a href="#">Reports</a>
                                    <ul>
                                                    <li><a href="#">License Reports</a></li>
                                                    <li><a href="#">Registration Reports</a></li>
                                    </ul>
                                </li>
                                <li><a href="ChangePrivilege.jsp">Manage Users</a></li>
                                <li><a href="#">Manage News</a>
                                    <ul>
                                                    <li><a href="NewNews.jsp">Add New News</a></li>
                                                    <li><a href="UpdateNewsSelect.jsp">Update Previous News</a></li>
                                    </ul>
                                </li>    
                                <li><a href="#">Manage Complaints</a></li>
                            <%  }
                                else
                                {
                            %>
                                
                            <!-- Menu Items for Public -->
                                <li><a href="home.jsp">Home</a></li>				
				<li><a href="Complaint.jsp">Complaints</a></li>
                                <li><a href="FAQDL.jsp">FAQs</a></li>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
                            <% } %>
			</ul>
		</div>
            
		<!-- end #menu -->
                <%
                if(session.getAttribute("name")!=null){
                %><div id="logout">
                    <p style="text-align: right"><%= session.getAttribute("name")%> || <a href="logoutaction.jsp">Logout</a></p>
                </div>
                <%}%>
                
	</div>
        <div id="page">
        <div id="page-bgtop">
	<!-- end #header -->
	<!-- end #header-wrapper -->
