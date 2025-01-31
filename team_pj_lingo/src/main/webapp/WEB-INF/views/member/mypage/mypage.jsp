<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<script type="text/javascript">
	$(function () {
		$("#mainBtn").click(function() {
			location.href = "${path}/main.do";
		});
		
		
	});
</script>
<title>mypage</title>
</head>
<body>
	<!-- Header 시작  -->
		<%@ include file = "/WEB-INF/views/common/header.jsp" %>
	<!-- Header 끝  -->
	<br><br><br><br>
	
	<form action="${path}/memberUpdate.do" method="post">
		<table class="table table-info table-bordered" align="center"  style="width:800px">
			<tr align="center">
				<th style="width: 20%">회원번호</th>
				<td style="width: 30%">1</td>
				
				<th style="width: 20%">아이디</th>
				<td style="width: 30%">daeyoul1003</td>
			</tr>
			
		 	<tr align="center">
				<th style="width: 20%">이름</th>
				<td style="width: 30%">12</td>
				
				<th style="width: 20%">국적</th>
				<td style="width: 30%">12</td>
			</tr >
			
			<tr align="center">
				<th style="width: 20%">생년월일</th>
				<td style="width: 30%">1994년10월03일</td>
				
				<th style="width: 20%">주소</th>
				<td style="width: 30%">서울시 강남구</td>
			</tr>
			
			<tr align="center">
				<th style="width: 20%">전화번호</th>
				<td style="width: 30%">010-1234-1234</td>
				
				<th style="width: 20%">활동등급</th>
				<td style="width: 30%">Diamond</td>
			</tr>
			
			<tr align="center">
				<th style="width: 20%">이메일</th>
				<td style="width: 30%">dayoul222@nate.com</td>
				
				<th style="width: 20%">가입일</th>
				<td style="width: 30%">2025/1/1</td>
			</tr>
			
			<tr align="center">
				<th colspan="4" >자기소개</th>
			</tr>
			
			<tr align="center">
				<td colspan="4">
				 	<textarea rows="10" cols="80" disabled style="pointer-events: none;"></textarea>
				</td>
			</tr>
			
			<tr align="center">
				<td colspan="4">
					<input type="button" class="btn btn-outline-info" id="updateActionBtn" value="회원정보 수정"/>
					<input type="button" class="btn btn-outline-info" id="mainBtn" value="메인으로" />
				</td>
			</tr>
		 
		 
		</table>
	</form>
	
	<!-- Footer 시작  -->
		<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
	<!-- Footer 끝  -->


</body>
</html>