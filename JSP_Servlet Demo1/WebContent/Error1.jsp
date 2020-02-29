<%@ page errorPage="user_error.jsp" %>
<%
int a = Integer.parseInt(request.getParameter("dividend"));
int b = Integer.parseInt(request.getParameter("divisor"));
out.println("<h3>Answer: " + (a/b) +"</h2>");

%>