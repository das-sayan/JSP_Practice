<%!
  int counter=10;
  public void jspInit()
  {
  System.out.println("Init method");

  }
%>
<%
 System.out.println("Service method.......");
 counter++;
%>
<h2>JSP Life cycle:Request counter</h2>

<p> This page has been called <%=counter%>times</p>
<%!
 public void jspDestroy()
 {
  System.out.println("Destroy method");

 }
%>