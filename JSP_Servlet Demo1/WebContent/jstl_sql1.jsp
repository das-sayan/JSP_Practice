<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
var="snapshot"
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/mydb"
user="root" password="1234"/>

<sql:query dataSource="${snapshot}" var="res">
select * from reguser;
</sql:query>
<table>
<tr>
<th>Name </th>
<th>Email </th>
<th> Country</th>
</tr>
<c:forEach var="row1" items="${res.rows }" >
<tr>
<td> <c:out value="${ row1.uname}" /> </td>
<td> <c:out value="${ row1.uemail}" /> </td>
<td> <c:out value="${ row1.ucountry}" /> </td>
</tr>
</c:forEach>
</table>