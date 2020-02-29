<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="s" value="${param.username}" />
We Welcome <br>
<c:out value="${s}" />
<c:out value="${param.username}" />