<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"
    pageEncoding="UTF-8" import="com.db.*, com.manager.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<!-- 获取账号以及密码，并且调用DBUtil当中的方法来判断是否存在指定的信息 -->
	<!-- <h3>响应的字符编码集： <%= response.getCharacterEncoding() %></h3> -->
	<%
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		
		Emp emp = new Emp(account,null,password,null);
		boolean flag = DBUtil.selectEmpByAccountAndPassword(emp);
		Map<String,Emp> map = DBUtil.map;
		if(flag == true){
			
			//统计访问量
			Object o = application.getAttribute("count");
			if(o == null){
				application.setAttribute("count", 1);
			}else{
				int count = Integer.parseInt(o.toString());
				application.setAttribute("count", count + 1);
			}
			
			session.setAttribute("account", account);
	%>
		<h3 align="right">访问量：<%= application.getAttribute("count") %></h3>
		<h3 align="right">登陆账户： <%= session.getAttribute("account") %></h3>
		<h3 align="center">欢迎来到人事管理系统的首页</h3>
		<hr>
		<table align="center", border="1" width="500px">
			<tr>
				<td>
					账号
				</td>
				<td>
					员工姓名
				</td>
				<td>
					邮箱
				</td>
				<td>
					修改
				</td>
			</tr>
			<%
				for(String key : map.keySet()){
					Emp e = map.get(key);
					%>
						<tr>
							<td>
								<%= e.getAccount() %>
							</td>
							<td>
								<%= e.getName() %>
							</td>
							<td>
								<%= e.getEmail() %>
							</td>
							<td>
								<a href="update.jsp?account=<%=e.getAccount()%>&name=<%=e.getName()%>&email=<%=e.getEmail() %>">修改</a>
							</td>
						</tr>
					<%
					
				}
			
			%>
		</table>
	<%
		}else{
			//out.println("账号或密码错误");
			throw new Exception("账号或密码错误!");
		}
	%>		
		

</body>
</html>