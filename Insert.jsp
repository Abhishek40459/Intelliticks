<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String description=request.getParameter("description");
String size=request.getParameter("size");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/intelliticks", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into test(name,description,size)values('"+name+"','"+description+"','"+size+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>