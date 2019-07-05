<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"
    pageEncoding="UTF-8" import="com.db.*, com.manager.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		Map<String,Emp> map = DBUtil.map;
		Emp emp = map.get(request.getParameter("account"));
		emp.setName(request.getParameter("name"));
		emp.setEmail(request.getParameter("email"));
	%>
	<h3 align="center">修改员工信息成功。</h3>
</body>
</html>