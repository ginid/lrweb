<%@page import="lrweb.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<style type="text/css">
<!--
#newsbox {
        margin-top:5px;
        position: absolute;
        font-size: 12px;
        width: 100%;
}
#newsbox li {
	margin: 0;
	padding: 10px 10px 1px 7px;
	background: url(images/img07.jpg) repeat-x left bottom;
        font-size: 12px;
}
#newsbox h3{
    font-size: 16px;
}
#newsbox a {
	text-decoration: none;
	font-weight: normal;
}
#newsbox a:hover{
    text-decoration: underline;
}
#newsbox li ul {
}
#newsbox ul {
	margin: 0;
	padding: 0px;
	list-style: none;
	line-height: 20%;
}
-->
</style>
<BODY onMouseover="scrollspeed=0" onMouseout="scrollspeed=current" OnLoad="NewsScrollStart();">
    <div id="Newsbox">
        <ul>
            <% 
                Connection con=DatabaseConnection.getConnection();
                Statement st=con.createStatement();
                ResultSet val=st.executeQuery("select NNo,Title,Date from news order by NNo desc");
                    while(val.next())
                { int n=val.getInt("NNO");String t=val.getString("Title");String d=val.getString("Date");
            %>
            <li>
                <%=d%><a href="news.jsp" target="_top"><h3><%=t%></h3></a>
            </li>                       
            <% } %>
        </ul>
</div>
<!-- YOU DO NOT NEED TO EDIT BELOW THIS LINE -->

<script language="JavaScript" type="text/javascript">
<!-- HIDE CODE

var scrollspeed		= "1"		// SET SCROLLER SPEED 1 = SLOWEST
var speedjump		= "30"		// ADJUST SCROLL JUMPING = RANGE 20 TO 40
var startdelay 		= "2" 		// START SCROLLING DELAY IN SECONDS
var nextdelay		= "0" 		// SECOND SCROLL DELAY IN SECONDS 0 = QUICKEST
var topspace		= "2px"		// TOP SPACING FIRST TIME SCROLLING
var frameheight		= "100px"	// IF YOU RESIZE THE WINDOW EDIT THIS HEIGHT TO MATCH



current = (scrollspeed)


function HeightData(){
AreaHeight=dataobj.offsetHeight
if (AreaHeight==0){
setTimeout("HeightData()",( startdelay * 1000 ))
}
else {
ScrollNewsbox()
}}

function NewsScrollStart(){
dataobj=document.all? document.all.Newsbox : document.getElementById("Newsbox")
dataobj.style.top=topspace
setTimeout("HeightData()",( startdelay * 1000 ))
}

function ScrollNewsbox(){
dataobj.style.top=parseInt(dataobj.style.top)-(scrollspeed)
if (parseInt(dataobj.style.top)<AreaHeight*(-1)) {
dataobj.style.top=frameheight
setTimeout("ScrollNewsbox()",( nextdelay * 1000 ))
}
else {
setTimeout("ScrollNewsbox()",speedjump)
}}

// END HIDE CODE -->
</script>

</body>