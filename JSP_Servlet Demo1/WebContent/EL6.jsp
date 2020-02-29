<jsp:useBean id="b1" class="com.test.Product" scope="request"  />
<jsp:setProperty property="pnumber" name="b1" value="${param.pno }"/>
<jsp:setProperty property="pname" name="b1" value="${param.pname }"/>
<h1>

<p> Pno(Using EL):${b1.pnumber } </p>
<p> Pno(Using Getter): <%= b1.getPnumber() %> </p>
<p> Pno(Using GetProperty): <jsp:getProperty name="b1" property="pnumber" /> </p>
<p> PName: ${b1.pname} </p>
</h1>