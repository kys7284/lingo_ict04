<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

	<!-- 기존설정 그대로 -->
	    <meta charset="utf-8">
	    <title>Lingo</title>
	    <meta content="width=device-width, initial-scale=1.0" name="viewport">
	    <meta content="" name="keywords">
	    <meta content="" name="description">
	
	    <!-- Favicon -->
	    <link href="img/favicon.ico" rel="icon">
	
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
	
	    <!-- Google Web Fonts -->
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">
	
	    <!-- Icon Font Stylesheet -->
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	<!-- 기존설정 그대로 끝-->

    <!-- Libraries Stylesheet -->
    <link href="${path}/resources/css/common/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${path}/resources/css/common/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${path}/resources/css/common/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${path}/resources/css/common/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- header 시작 -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <i class="fa fa-2x fa-globe text-primary "></i><h2 class="m-0 text-primary">lingo</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            
            <div class="navbar-nav ms-auto p-4 p-lg-0">
            
               <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fas fa-globe-americas  mb-4"></i></a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="#" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/korea.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">한국어</a>
                        <a href="#" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/us.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">English</a>
                        <a href="#" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/vietnam.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">Tiếng Việt (Vietnam)</a>
                        <a href="#" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/china.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">中文 (Chinese)</a>
                        <a href="#" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/thai.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">ภาษาไทย (Thai)</a>
                        <a href="#" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/japan.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">日本語 (Japanese)</a>
                    </div>
                </div>
                
                <a href="${path}/main.do" class="nav-item nav-link active">Home</a>
                
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">게시판</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="#" class="dropdown-item">자유게시판</a>
                        <a href="#" class="dropdown-item">엔터테이먼트</a>
                        <a href="#" class="dropdown-item">친구찾기</a>
                    </div>
                </div>
                
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Q&A</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="#" class="dropdown-item">생활정보</a>
                        <a href="#" class="dropdown-item">여행정보</a>
                        <a href="#" class="dropdown-item">의료정보</a>
                        <a href="#" class="dropdown-item">법률정보</a>
                    </div>
                </div>
                
                <a href="courses.html" class="nav-item nav-link">번역서비스</a>
                <c:if test="${sessionScope.sessionId == null}">
                	<a href="${path}/login.do" class="nav-item nav-link">로그인</a>
                </c:if>
                <c:if test="${sessionScope.sessionId != null}">
                	<a href="${path}/mypage.do" class="nav-item nav-link">마이페이지</a>
                </c:if>	
            </div>
            <a href="${path}/join.do" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">회원가입<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
	<!-- header 끝 -->
	
	<!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/css/common/lib/wow/wow.min.js"></script>
    <script src="${path}/resources/css/common/lib/easing/easing.min.js"></script>
    <script src="${path}/resources/css/common/lib/waypoints/waypoints.min.js"></script>
    <script src="${path}/resources/css/common/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${path}/resources/js/main.js"></script>
</body>
</html>