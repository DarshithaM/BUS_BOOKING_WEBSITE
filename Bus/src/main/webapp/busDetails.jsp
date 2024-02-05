<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Details Page</title>
</head>
<body style="background:url('sign.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
<center><h1 style="text-align:center; font-size:40px; font-family:Times New Roman">Select your Start and End location</h1><br/><br/></center>

<form method="post" action="location.jsp" style="font-size:27px;">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

Choose the Start Location:<select id="bus" name="busname"  style="font-size:20px;">
<option value="chennai">Chennai</option>
<option value="trichy">Trichy</option>
<option value="madurai">Madurai</option>
<option value="kanyakumari">Kanyakumari</option>
<option value="koorg">Koorg</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

Choose the End Location: <select id="bus1" name="busname1"  style="font-size:20px;">
<option value="chennai">Chennai</option>
<option value="trichy">Trichy</option>
<option value="madurai">Madurai</option>
<option value="kanyakumari">Kanyakumari</option>
<option value="koorg">Koorg</option>
</select>
<br/><br/><br/>

<center>
<input type="submit" value="Submit" name="submit" onMouseOver="this.style.color='#ffee54'" onMouseOut="this.style.color='white'" value="Log In" style=" border-radius: 30px; background-color: #3b3734;border: none; color: white; padding: 12px 30px; text-decoration: none; margin: 4px 2px; cursor: pointer; font-size:20px;"></input>
<a href="index.jsp" ><input type="button" value="Log Out" onMouseOver="this.style.color='#ffee54'" onMouseOut="this.style.color='white'" value="Log In" style=" border-radius: 30px; background-color: #3b3734;border: none; color: white; padding: 12px 30px; text-decoration: none; margin: 4px 2px; cursor: pointer; font-size:20px;"></input></a>
</center>
<br/>
<br/>
</form>
<table align="center"  border="1px solid black" border-collapse="collapse" cellpadding="10%" style="font-size:20px;">
            <tr>
                <th>Bus Id</th> 
                <th>Starting Location</th>
                <th>Ending Location</th>
                <th>Price</th> 
                <th>Book tickets</th>
            </tr>
            
            <%
            if((request.getParameter("submit"))!=null){
            	
            
            Connection con;
               ResultSet rs;
               Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
               String sl=request.getParameter("busname");
               String el=request.getParameter("busname1");
           
               String query = "select * from busdetail WHERE startLocation='"+sl+"'";
               Statement st = con.createStatement();
                  rs= st.executeQuery(query);
                  
                      while(rs.next())
                      {
                    	  String id = rs.getString("busid");
                    	  String slocation=rs.getString("startLocation");
                    	  String elocation=rs.getString("endLocation");
                    	 if(elocation.equals(el)){ 
                      
             %>
             
	               <tr>
	                <td class="text-right"><%= id%></td>
	                <td class="text-right"><%= slocation%></td>
	                <td class="text-right"><%= elocation%></td>
	                <td class="text-right"><%=rs.getString("Price") %></td>
	                <td class="text-right"><a href="<%= id%>.jsp">Book here</a></td>
	               </tr>  
               
                  <%
                       
}
                    	 else{
                    		 }}
                    	 }
            
                   %>
                   
       </table>

</body>
</html>