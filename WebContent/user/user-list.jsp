<%@page import="java.sql.*"%>
<%@page import="common.Connector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	Connection con = Connector.getConnection();
Statement stmt = con.createStatement();
String sql ="SELECT * FROM user";
ResultSet rs = stmt.executeQuery(sql);
 	%>
 	<a href="naver.com"></a><button>회원정보입력</button></a>
 	<table border="1">
		<tr>
			<td><font color="blue">이름</td>
			<td>아이디</td>
	</tr>
<%
while(rs.next()){
%>
		<tr>
			<td><%=rs.getString("Name") %></td>
			<td><%=rs.getString("id") %></td>
	    </tr>
<%
}
%>
</table>
</body>
</html>