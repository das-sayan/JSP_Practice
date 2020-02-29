<body bgcolor="#ffb366">
<% out.println("<h1>hello world</h1>"); %>

<%!  //this is declaration tag
int a=100;
int add(int m,int n){
	return m+n;
}

int sub(int m,int n){
	return m-n;
	
}
%>
<% //scriplet tag
int a1=200;
out.println("<h2> "+a+" "+a1+ "</h2>");
out.println("Addition: " +add(20,10));
out.println("<h3>Subtraction: " +sub(40,10) +"</h3>");
%>
</body>