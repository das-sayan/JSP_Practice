<body bgcolor="yellow">
<%@ include file="Demo1.jsp" %>
<h1>Next......</h1>
<jsp:include page="Inc1.jsp"/>
 <jsp:include page="Inc1.jsp">
 
 	<jsp:param name="Company" value="CTS"/>
 	<jsp:param name="Time" value="9AM - 6PM"/>

</jsp:include>
