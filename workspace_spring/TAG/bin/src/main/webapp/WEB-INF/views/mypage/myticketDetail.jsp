<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<style>
	table {border-collapse:collapse;}

	.leftcontent {
		float: left;
		width: 15%;
		margin-right: 5%;
		height: 100%;
	}
	
	.rightcontent {
		float: right;
		width: 75%;
		--height: 100%;	
		--position: relative;	
	}

	.leftcontent, .box { border-top: 1px solid black; }


	.leftcontent { border-bottom: 1px solid black; }
	
	
	.leftcontent div, .rightcontent {
		padding:10px;
	}
	
	.box { margin-top: 10%; }
	
	.clickInfo {
		text-align: center;
		margin: 10px;
		color: #000000;
		animation-name: blink;
		animation-duration: 3s;
		animation-iteration-count: infinite;
	}
	
	@keyframes blink {
		50% {opacity: 0;}
	}
	
	
	.myticketDetail ol{
		text-align:right; 
		list-style:none; 
		padding-right:15px; 
		padding-top:15px; 
		padding-bottom:15px; 
		font-size:18px; 
		font-weight:bold;
	}
	
	.btnDIV {
		margin-left:40px;
		margin-right:200px;
		width:550px;
		padding-top:20px;
		padding-bottom:80px;
		text-align:center;
	}
	
	
	
	.bill{
		margin-left:40px;
		margin-right:40px;
		width:550px;
		border: 1px solid black;
		padding: 60px 10px 10px 10px;
	}
	
	.myticketDetail h1{
		display:inline-block;
		float:left;
	}
	
	.product-image {
		display:inline-block;
		width: 550px;
		margin-left: 40px;
		padding-bottom: 40px;
		text-align: right;
	}
	
	.product-image img{
	    width: 180px;
	    float:right;
	}
	
	table{
		width:550px;
	}
	
	.topLine{
		border-top: 1.5px solid black;
	}
	
	.alignRight{
		text-align:right;
	}
	
	.paddingBottom{
		padding-bottom:40px;
	}


	

	.cnlBtn {
	  width: 100px;
	  padding-top: 12px;
	  padding-bottom: 12px;
	  margin: 0 10px 0 10px;
	  border: none;
	  background-color: black;
	  color: white;
	}
	
	.bckBtn {
	  width: 100px;
	  padding-top: 12px;
	  padding-bottom: 12px;
	  margin: 0 10px 0 10px;
	  border: none;
	  background-color: white;
	  color: black;
	  border: 1px solid black;
	}

	
</style>




<div class="title">
	<h3 style="text-align: center;">?????? ?????? ??????</h3>
</div>

<div class="leftcontent">
	<div><b>${s_m_id}</b> ???</div>
	<div><a href="/mypage/memberupdateG">?????? ?????? ??????</a></div>
	<div class="box">
		<div><b>MY??????</b>
			<div><a href="/mypage/myticket">- ?????? ?????? / ??????</a></div>	
		</div>
		<div><b>MY??????</b>
			<div><a href="/mypage/myproduct">- ?????? ????????????</a></div>	
			<div><a href="/mypage/myqna">- ?????? ????????????</a></div>
		</div>
		<div><b>?????????</b>
			<div><a href="/mypage/mylike">- ?????? ?????? / ?????? ??????</a></div>
		</div>
		<div><b>MY?????? / MY?????????</b>
			<div><a href="/couponDetail/detail">- ?????? ??????</a></div>
			<div><a href="/pointDetail/detail">- ?????? ?????????</a></div>
		</div>
	</div>
</div><!-- leftcontent end -->



<div class="rightcontent">
	<div class="myticketDetail">
		<div class="product-image">
			<h6 style="width:60px; border-bottom:2px solid black;"></h6>
			<h1 style="width:40px;">${detail.title}</h1>
			<%-- <a href="detail/${row.pro_no}"><img src="/storage/${row.postername}" width="300px" height="400px"></a> --%>
			<a href="/concert/${detail.c_no}"><img src="/storage/${detail.postername}"></a>
		</div>
		<div class="bill">
			<table class="table">
			<tr>
				<th colspan='2' class="alignRight">???????????? : ${detail.tck_num}</th>
			</tr>
			<tr class="topLine">
				<th colspan='2'>?????? ????????????</th>
			</tr>
			<c:forEach items="${list}" var="row" varStatus="vs">
				<tr>
					<td style="width:50%;">${row.cseat}</td>
					<td class="alignRight"><fmt:formatNumber value="${row.price}" type = "currency"/></td>
				</tr>
			</c:forEach><!-- c:forEach end -->	
			<tr class="topLine paddingBottom">
				<th class="paddingBottom">??? ??????</th>
				<td class="alignRight">${detail.cnt}???</td>
			</tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr class="topLine">
				<th class="paddingBottom">?????? ??????</th>
				<td class="alignRight"><fmt:formatNumber value="${detail.order_price}" type = "currency"/></td>
			</tr>	
			<tr>
				<th>?????? ??????</th>
				<td class="alignRight">-<fmt:formatNumber value="${detail.dis_price}" type = "currency"/></td>
			</tr>	
			<tr>
				<td class="paddingBottom"></td>
				<td class="alignRight">${detail.dis_descrip}</td>
			</tr>					
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr class="topLine">
				<th>?????????</th>
				<c:choose>
					<c:when test="${detail.d_fee == 0}">
						<td class="alignRight">????????????</td>
					</c:when>
					<c:otherwise>
						<td class="alignRight"><fmt:formatNumber value="${detail.d_fee}" type = "currency"/></td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr class="topLine">
				<th class="paddingBottom">?????? ????????????</th>
				<td class="alignRight"><fmt:formatNumber value="${detail.total_price}" type = "currency"/></td>
			</tr>	
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr>
				<th colspan="2" style="text-align:center;">????????? ??????</th>
			</tr>
			<tr class="topLine">
				<th>????????????</th>
				<td>${detail.rec_name}</td>
			</tr>	
			<tr>
				<th>???????????????</th>
				<td>${detail.rec_tel}</td>
			</tr>
			<c:choose>
				<c:when test="${detail.d_fee == 0}">
					<!-- ?????????????????? ??????,????????? ?????? ?????? -->
				</c:when>
				<c:otherwise>
					<tr>
						<th>????????????</th>
						<td>${detail.rec_zipcode}</td>
					</tr>
					<tr>
						<th>??????</th>
						<td>${detail.rec_addr1}</td>
					</tr>
					<tr>
						<th>????????????</th>
						<td>${detail.rec_addr2}</td>
					</tr>
					<tr>
						<th class="paddingBottom">???????????????</th>
						<td>${detail.msg}</td>
					</tr>
				</c:otherwise>
			</c:choose>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr class="topLine">
				<th class="paddingBottom">????????????</th>
				<td>${detail.stus}</td>
			</tr>					
			</table>
		</div><!-- bill end -->
		<div class="btnDIV">
				<!--  
				<button type="button" onclick="location.href='/mypage/myticket/delete/${detail.tck_num}'">????????????</button>
				-->
				<button class="cnlBtn" onclick="location.href='/mypage/myticket/cancelPolicy/${detail.tck_num}'">????????????</button>
				<button class="bckBtn" onclick="location.href='/mypage/myticket'">????????????</button>
			
		</div><!-- ???????????? / ???????????? -->
	</div><!-- myticketDetail end -->
</div><!-- rightcontent end -->



<!-- ?????? ??? -->



<script>


</script>






<%@ include file="../footer.jsp" %>