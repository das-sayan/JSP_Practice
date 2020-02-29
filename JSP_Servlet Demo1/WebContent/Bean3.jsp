<body bgcolor="grey">
<h2>Java Bean Details</h2>
<jsp:useBean id="b1" class="com.test.Product" scope="session"/>
 <h1>
 	Pr.Number 	<jsp:getProperty name="b1" property="pnumber" />
 	Pr.Name    <jsp:getProperty name="b1" property="pname"  />
 	</h1>
</body>