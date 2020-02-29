<%
if((request.getParameter("a1")).equals("sayan"))
{
%>
<jsp:forward page="For1.jsp">
	<jsp:param name="user" value="**Welcome User**"></jsp:param>
</jsp:forward>

<%		
}
else
{

%>
<jsp:forward page="For2.jsp">
	<jsp:param name="user" value="**Welcome User**"></jsp:param>
</jsp:forward>
<%
}
%>