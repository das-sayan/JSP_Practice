<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cts"%>
<cts:out value ="COGNIZANT"/>
<cts:out value="Hello World.."/>
<!-- jstl contains EL TAG -->
 <cts:out value="${a }"></cts:out>
 <cts:forEach var="n" begin="10" end="100" step="5">
 <cts:out value="${n}"/><br>
 </cts:forEach>