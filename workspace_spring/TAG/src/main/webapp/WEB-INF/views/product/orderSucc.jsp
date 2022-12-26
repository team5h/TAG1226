<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<style>
.div {
	text-align:left;
	margin:auto;
	padding:auto;
	width:50%;

}

.div table {
	border-top:1px solid black;
	width:100%;
}

.div table td {
	padding:6px;
}

.goProductBtn {
color: black;
font-size:18px; 
border:solid; 
padding:10px 20px; 
--margin-top:120px;
margin-left:20px;
border-radius: 20px 20px 20px 20px;
}

.goProductBtn:hover{
color:lightgreen;
}
</style>

<script>
$(document).ready(function(){
	$(".headProduct").addClass("active");//헤더 굿즈 아래 밑줄
});//ready() end
</script>

<!-- 본문영역 -->
<div class="totalwrap" style="text-align: center; margin-bottom:100px;">
  <div class="wrapcont" style="text-align:center; margin-top:40px;">
	<p> ${s_m_id} 님의 주문이 완료되었습니다. </p>
	<br>
	<div class="div">
		<h5>결제정보</h5>
		<table>
			<tr>
				<td style="width:20%;">주문번호</td>
				<td>: ${productOrder.order_num}</td>
			</tr>
			<tr>
				<td>상품명</td>
				<td>
					<c:if test="${cnt == 1}">
						: ${productName}
					</c:if>
					<c:if test="${cnt > 1}">
						: ${productName} 외 ${cnt-1}개
					</c:if>
				</td>
			</tr>
			<tr>
				<td>총 금액</td>
				<td>
					: <fmt:formatNumber value="${productOrder.total_price}" type = "currency"/>
				</td>
			</tr>
		</table>
		<br>
		<br>
	</div>
	<div class="div">
		<h5>배송정보</h5>
		<table>
			<tr>
				<td style="width:20%;">받는사람</td>
				<td>: ${productOrder.rec_name}</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>: ${productOrder.rec_zipcode}</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>: ${productOrder.rec_addr1}</td>
			</tr>
			<tr>
				<td>상세 주소</td>
				<td>: ${productOrder.rec_addr2}</td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td>: ${productOrder.rec_tel}</td>
			</tr>
			<tr>
				<td>배송메세지</td>
				<td>
					<c:if test="${productOrder.msg == null}">
						: (없음)
					</c:if>
					<c:if test="${productOrder.msg != null}">
						: ${productOrder.msg}
					</c:if>
				</td>
			</tr>
		</table>
		<br><br>
	</div>
	
	<p>
		<a class="goProductBtn" href="/list.do">상품 더 보러가기</a>
		<a class="goProductBtn" href="/mypage/pDetail/${productOrder.order_num}">주문정보 보러가기</a>
	</p>
	
	

	<br><br><br>
  </div>
</div>
<!-- 본문영역 -->

<%@ include file="../footer.jsp" %>