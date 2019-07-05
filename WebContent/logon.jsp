<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>人事管理系统</title>
</head>
<body>
	<%
		//request.setAttribute("name", "star");
		//request.getRequestDispatcher("result.jsp").forward(request, response);
	
	%> 
	
	<!-- 
	config对象：<%= config.getServletName() %>
	<br/>
	config初始化参数：<%= config.getInitParameter("age") %>
	<h3 align="center">人事管理系统登陆页面 </h3>
	<hr>
	 -->
	
	<form action="control.jsp">
		<table>
			<tr>
				<td>
				账号：
				</td>
				<td>
				<input type="text" name="account"/>
				</td>
			</tr>
			<tr>
				<td>
				密码：
				</td>
				<td>
				<input type="password" name="password"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="登录"/>
				</td>
			</tr>
		</table>	
	</form>
</body>
</html>