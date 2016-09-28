<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>


<!DOCTYPE html>
<html>
<head>

<title></title>
</head>
<body>
	<%
 try{
	InitialContext ctx = new InitialContext();
	DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mydb");
	
	Connection con=ds.getConnection();
	out.println("디비 연동 성공");
	con.close();
   }catch(Exception e){
	out.println("디비연결에 실패하였습니다.");
		
    }
%>
	<%-- 
Context initContext = new InitialContext();
Context envContext  = (Context)initContext.lookup("java:/comp/env");
DataSource ds = (DataSource)envContext.lookup("jdbc/mydb");
Connection conn = ds.getConnection();
	--%>
</body>
</html>