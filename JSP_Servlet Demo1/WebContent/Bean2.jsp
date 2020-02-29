<body bgcolor="yellow">
<h2>Java Bean Details</h2>
<jsp:useBean id="b1" class="com.test.Product" scope="session"/>

	<jsp:setProperty name="b1" property="pnumber" param="a1"/>
    <jsp:setProperty name="b1" property="pname"  param="b1"/>
    
    <h1>
 	Pr.Number 	<jsp:getProperty name="b1" property="pnumber" />
 	Pr. Name    <jsp:getProperty name="b1" property="pname"  />
 	</h1>
 	<a href="Bean3.jsp">Next Page</a>
</body>