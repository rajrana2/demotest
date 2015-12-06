<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/mysql"
     user="root"  password="my-secret-pw"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from user;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Host</th>
   <th>User</th>
   <th>max_connections</th>
   <th>Account Locked</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.host}"/></td>
   <td><c:out value="${row.user}"/></td>
   <td><c:out value="${row.max_connections}"/></td>
   <td><c:out value="${row.account_locked}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>