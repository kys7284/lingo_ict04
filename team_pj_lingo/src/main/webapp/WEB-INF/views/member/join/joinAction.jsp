<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<c:if test="${insertCnt == 1}">
				<script type="text/javascript">
					window.location="${path}/main.do";
					alert("반갑습니다!");
					
				</script>
			</c:if>
		
			<c:if test="${insertCnt != 1}">
				<script type="text/javascript">
					window.location="${path}/main.do";
					alert("회원가입 실패!!");
				</script>
			</c:if>

</body>
</html>