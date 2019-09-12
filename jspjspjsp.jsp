<%@ page import="java.sql.*" %>
<html>
<head>
<title>JDBC Connection example</title>
</head>
<body>
<h1>JDBC Connection example</h1>
<%
String db = "cs157a"; //or root
String user = "root"; // assumes database name is the same as username
try {
java.sql.Connection con;
Class.forName("org.gjt.mm.mysql.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:8080/"+db+"?autoreconnect=true&useSSL=false", user, "kachow");
out.println (db+ "database successfully opened.");
}
catch(SQLException e) {
out.println("SQLException caught: " +e.getMessage());
}
%>
</body>
</html>
</%