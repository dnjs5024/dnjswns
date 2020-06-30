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
 	<a href="./user-insert.jsp"><button>회원정보입력</button></a>
 	<form action="/web/user/user-delete-ok.jsp">
 	<button>삭제</button>
 	<table border="1">
		<tr>
			<th><input type="checkbox" id="all" onclick="checkAll()"></th>하이요 ㅋㅋ
			<td>번호</td>
			<td><font color="blue">이름</td>
			<td>아이디</td>
	</tr>
<%
while(rs.next()){
%>
		<tr>
			<td><input type="checkbox" name="ch" value="<%=rs.getInt("num") %>"></td>
			<td><%=rs.getInt("num") %></td>
			<td><%=rs.getString("Name") %></td>
			<td><%=rs.getString("id") %></td>
	    </tr>
<%
}
%>
</table>
</form>
<script>
	function checkAll(){
		var obj =  document.getElementById('all');
		var objs = document.getElementsByName('ch');
		for(var i=0;i<objs.length;i++){
			objs[i].checked = obj.checked;
		}
	}
</script>
</body>
</html>