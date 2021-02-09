<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String motherName=request.getParameter("motherName");
String gender=request.getParameter("gender");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st =con.createStatement();
	st.executeUpdate("insert into students values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+motherName+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e){
	out.println(e);
}
%>