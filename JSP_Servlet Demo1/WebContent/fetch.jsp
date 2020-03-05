<%
String emp_id = (String)request.getAttribute("emp_id");
String name = (String)request.getAttribute("name");
out.println("Table Data");
out.print(emp_id+" "+name);
%>