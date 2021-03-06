<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>Insert title here</title>
<jsp:include page="../common/header.jsp"></jsp:include><hr> 
<link rel="stylesheet" href="../css/myPage/myPage.css">
<link rel="stylesheet" href="../bootstrap-icons/font/bootstrap-icons.css">
</head>
<body>

    <section class="container col-lg-12">
        <div class="row">
            <div class="col-lg-3 bg-secondary m-3 text-center">
                    <nav id="side_left" class="my-auto">
                        <ul class="list-unstyled" >
                            <li class="p-1"><a href="/CoStudy/myPage/studyDiaryListAction.do">공부일기</span>&nbsp;&nbsp;<i class="bi bi-journal-check fs-1"></i></a></li>
                            <li class="p-1"><a href="/CoStudy/myPage/scheduleListAction.do">일정관리&nbsp;&nbsp; <i class="bi bi-calendar-month fs-1"></i></a></li>
                            <li class="p-1"><a href="#">1:1 채팅목록&nbsp;&nbsp;<i class="bi bi-chat-square-quote fs-1"></i></a></li>
                            <li class="p-1"><a href="/CoStudy/myPage/joinGroupListAction.do">참가 그룹 목록&nbsp;&nbsp;<i class="bi bi-chat-quote fs-1"></i></a></li>
                            <li class="p-1"><a href="/CoStudy/myPage/categoryUpdateFormAction.do">관심 분야 수정&nbsp;&nbsp;<i class="bi bi-pencil-fill fs-1"></i></a></li>
                            <li class="p-1"><a href="/CoStudy/myPage/userUpdateFormAction.do">회원 정보 수정&nbsp;&nbsp;<i class="bi bi-tools fs-1"></i></a></li>
                            <li class="p-1"><a href="/CoStudy/myPage/applyQuitUserCheckFormAction.do">회원 탈퇴 신청&nbsp;&nbsp;<i class="bi bi-person-x fs-1"></i></a></li>
                        </ul>
                    </nav>
            </div>
            <div class="col-8 " id="contents">
		        <h3>회원정보 수정</h3>
                <hr style="width:800px;" class="text-primary">
		        <div class="row mb-5">
                    <div class="col-lg-8 m-auto bg-white border border-primary p-3">
					<form action="userUpdateAction.do" method="post">
					        <input type="hidden" name="user_no" value="${user.user_no}">
					        <label>
					        	<p><b>아이디 :</b> ${sessionScope.user.user_id}
					        </label>
					        <label>
					        	<p><b>비밀번호 :</b> <input type="password" name="user_pw" value="${sessionScope.user.user_pw}"></p>
					        </label>
					        <label>
					        	<p><b>생년월일 :</b> 
					     		<fmt:parseDate var="dt" value="${sessionScope.user.user_birth}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:parseDate>
								<fmt:formatDate value="${dt}" pattern="yyyy-MM-dd"/>
					        </label>
					        <label>
					        	 <p> <b>성 :</b> <input type="text" name="user_lastName" value="${sessionScope.user.user_lastName}"> <b>이름 :</b> <input type="text" name="user_firstName" value="${sessionScope.user.user_firstName}"></p>
					        </label>
					        <label>
					        	<p> <b>휴대전화 번호 :</b> <input type="text" name="user_phoneNo" value="${sessionScope.user.user_phoneNo}"></p>
					        </label>
					        <label>
					        	<p><b>우편번호 :</b> <input type="text" name="user_post" value="${sessionScope.user.user_post }"></p>
					        </label>
					        <label>
					        	<p> <b>주소 :</b> <input type="text" name="user_address1" value="${sessionScope.user.user_address1 }"></p>
					        </label>
					        <label>
					        	<p>  <b>상세주소 :</b> <input type="text" name="user_address2" value="${sessionScope.user.user_address2}"></p>
					        </label>
					        <label>
					        	<p>  <b>이메일주소 :</b> <input type="text" name="user_email" value="${sessionScope.user.user_email }"></p>
					        </label>
					        <label>								
					     		<fmt:parseDate var="dt" value="${sessionScope.user.user_register_date}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:parseDate>
								
					        	<p>  <b>가입일 :</b> <input type="text" name="user_register_date" value=<fmt:formatDate value="${dt}" pattern="yyyy-MM-dd"/> readonly="readonly"></p>
					        </label><br><br>
                            <div class="text-center">
							<button type="submit" class="btn btn-primary p-1">수정</button>
							<button type="reset" class="btn btn-primary p-1">취소</button>
                            </div>
				        </form>
                        </div>
			        </div>
		        </div>
	        </div>
	    </section>
	    <jsp:include page="/view/common/footer.jsp"></jsp:include> 
</body>
</html>