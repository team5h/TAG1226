<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./ssi.jsp" %>
<%@ include file="../header.jsp" %>


<style>

.login-title {
	font-size : 36px;
	font-weight: bold;
}

.login-btn {	
	font-size : 18px;
	width: 250px;
	height: 50px;
	background-color: black;
	color: white;
	border: none;
	margin-top: 20px;
  }
  
  .join-btn {	
	font-size : 18px;
	width: 250px;
	height: 50px;;
	background-color: white;
	border: 1px solid black;
	margin-top: 20px;
  }
  
  .login-btn:hover {
  	color: black;
  	background-color: lightgreen;
  }

.untree_co-section {
padding-top:55px;
height: 425px;
}


.wrap {
	text-align: center;
}

.my-div1 {
	--background-color: #F2F3F4;
	width: 450px;
	height: 270px;
	text-align: center;
	display: inline-block;
	margin-top: 100px;
	margin-bottom: 50px;
}


footer{
  height: 170px;
  position : relative;
  transform : translateY(-100%);
}

h1 {padding-bottom: 30px;}
  
</style>

<!-- 본문영역 -->

 <!-- 판매자 회원 박스 시작 -->
 <div class="wrap">

 
		<div class="my-div1">
			<div class="my-div2">
				<h1 class="login-title" >판매자 회원</h1>
				<div class="login">
			 		<button class="login-btn" type="button" onclick="location.href='loginS.do'">로그인</button>
			 	</div>
			 	<div class="join">
			 		<button class="join-btn" type="button" onclick="location.href='/agreementS.do'">회원가입</button>
		 		</div>
		 	</div>
		</div>

		<div class="my-div1">
			<div class="my-div2">
				<h1 class="login-title">일반 회원</h1>
				<div class="login">
			 		<button class="login-btn" type="button" onclick="location.href='/loginG.do'">로그인</button>
			 	</div>
			 	<div class="join">
			 		<button class="join-btn" type="button" onclick="location.href='/agreementG.do'">회원가입</button>
				</div>
			</div>
		</div>

</div>


<!--   본문영역 -->

<%@ include file="../footer.jsp" %>