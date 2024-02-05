<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Your Tickets</title>
</head>
<body style="background:url('box.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
<center><h1 style="text-align:center; font-size:40px; font-family:Times New Roman">Chennai To Trichy Bus</h1></center>
<center><h3 style="text-align:center; font-size:28px; font-family:Times New Roman">Book Your Seats</h3></center>
<center>
<form action="t3.jsp" method="post"  style="font-size:25px;">
<input type="checkbox" name="c" value=1 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=2 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
&nbsp;
&nbsp;
&nbsp;
<input type="checkbox" name="c" value=3 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=4 style="transform : scale(3);"></input></br></br>
<input type="checkbox" name="c" value=5 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=6 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
&nbsp;
&nbsp;
&nbsp;
<input type="checkbox" name="c" value=7 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=8 style="transform : scale(3);"></input></br></br>
<input type="checkbox" name="c" value=9 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=10 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
&nbsp;
&nbsp;
&nbsp;
<input type="checkbox" name="c" value=11 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=12 style="transform : scale(3);"></input></br></br>
<input type="checkbox" name="c" value=13 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=14 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
&nbsp;
&nbsp;
&nbsp;
<input type="checkbox" name="c" value=15 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=16 style="transform : scale(3);"></input></br></br>
<input type="checkbox" name="c" value=17 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=18 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
&nbsp;
&nbsp;
&nbsp;
<input type="checkbox" name="c" value=19 style="transform : scale(3);"></input>&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value=20 style="transform : scale(3);"></input></br></br>
<input type="submit" value="Book Your Ticket" onMouseOver="this.style.color='#ffee54'" onMouseOut="this.style.color='white'" value="Log In" style=" border-radius: 30px; background-color: #000000;border: none; color: white; padding: 12px 30px; text-decoration: none; margin: 4px 2px; cursor: pointer; font-size:20px;"></input>
</form>	</center>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
	Statement s=c.createStatement();
	String q="SELECT alloted,seatno FROM bus3";
	ResultSet rs=s.executeQuery(q);

	while(rs.next()){
			String p=rs.getString("alloted");
			int se=rs.getInt("seatno");
			int[] num={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21};
			
			%>
			<script>
			var ele=document.getElementsByName("c");
                     ele[<%=se%>-1].disabled=<%=p%>;  
			</script>
			<% 
	}

}
catch(Exception e){
	out.println(e);
}
%>

</body>
</html>