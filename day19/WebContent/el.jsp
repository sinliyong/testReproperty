<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- prefix:标签的前缀 
    uri:标签库所在地址
    -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${pageContext}
	<br/>
	<br/>
	<hr/>
	<!-- 判断
	test:需要使用el表达式
	-->
	<c:if test="${1>0}">
		1确实大于0
	</c:if>
	
	<br/>
	<br/>
	<hr/>
	<!-- 设置值 
		给变量设置值
		scope=""
	-->
	<c:set var="userage" value="100"></c:set>
	用户年龄：${userage}
	
	<br/>
	<br/>
	<hr/>
	
	<!-- 遍历 
	begin="" 开始索引
	end 结束索引
	items:遍历的集合或者数组
	step： 
	var: 从集合取出来的元素，
	varStatus:status.index
	-->
	
	
	<c:forEach begin="2" end="20" varStatus="status" >
		${status.index} <br/>
	</c:forEach>
   <br/>
	<br/>
	<hr/>
	<c:forEach items="${userList}" var="user">
	   ${user.name}-------------${user.age} <br/>
	</c:forEach>

	<%-- <%
	   
	
		for(int i =0;i<10;i++){
			
		}
	%> --%>
	<!-- case
	
	 -->
	<c:choose>
		<c:when test="${ 1>0}">
			1确实大于0吗
		</c:when>
		<c:when test="${ 2<0}">
			2确实大于0吗
		</c:when>
		<c:otherwise>
			执行了otherwise
		</c:otherwise>
	</c:choose>

</body>
</html>