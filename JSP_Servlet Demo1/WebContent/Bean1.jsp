<body bgcolor="green" text="blue">
<h1> JAVA Beans Details</h1>

<jsp:useBean id="s1" class="com.test.Product" scope="request" />
 	<jsp:setProperty property="pnumber" name="s1" value="20" />
  	<jsp:setProperty property="pname" name="s1" value="KOlKATA _ City of Joy" />
 	<h1>
 	Pr.Number 	<jsp:getProperty name="s1" property="pnumber" />
 	Pr.Name    <jsp:getProperty name="s1" property="pname"  />
 	</h1>


</body>