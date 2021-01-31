<%--
  Created by IntelliJ IDEA.
  User: tanta
  Date: 1/5/2020
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%String s = (String) request.getAttribute("message");%>
   <p><%=s%></p>
</body>
</html>
