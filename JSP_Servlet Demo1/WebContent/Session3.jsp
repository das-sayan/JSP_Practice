<%

out.println("<h3> "+session.getAttribute("psession") +"</h3>");
out.println("<h3> "+session.getAttribute("sessionName") +"</h3>");
session.invalidate();
out.println("<a href='session1.jsp'> Back to Home. </a>");
%>