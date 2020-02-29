<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%
out.println("default session id: "+session);
String Uname = request.getParameter("name");
out.println("<h2> "+Uname +"</h2>");
session.setAttribute("sessionName", Uname);
session.setAttribute("psession", session);
out.println("<a href='Session3.jsp'>Next Page</a>");
%>