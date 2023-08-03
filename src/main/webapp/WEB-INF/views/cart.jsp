<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon" />
		<title>쿠팡! | 장바구니</title>
		
		<!-- Bootstrap을 사용하기 위한 외부 라이브러리 가져오기 -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css"/>
		<script src="${pageContext.request.contextPath}/resources/javascript/cart.js"></script>
	</head>
	<body>
		<div class="wrap">
			<header>
				<a href="https://www.coupang.com/"><img src="${pageContext.request.contextPath}/resources/images/fruitlight_logo.png" width="300px;"></a>
			</header>
			<section class="container">
				<div class="cart_title"><h3 class="p-3">장바구니</h3></div>
				<div class="cart_content">
					<table class="table table-sm cartTable">
						<colgroup>
							<col width="50">
							<col width="80">
							<col width="*">
							<col width="200">
							<col width="90">
							<col width="90">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="cartTableCol1">
									<label>
										<input type="checkbox" value="allcheck" class="cboxAll">
		  								<span>전체선택</span>
	  								</label>
								</th>
								<th scope="colgroup" colspan="2">상품정보</th>
								<th scope="col">상품옵션</th>
								<th scope="col">상품금액</th>
								<th scope="col">배송비</th>
							</tr>
						</thead>
						<!-- 로켓배송 상품 -->
						<tbody class="cartTableBodyRocket">
							<tr class="cartItem">
				            	<td class="cartItem_check"><input type="checkbox" class="cbox"/></td>
				            	<td class="cartItem_img"><img src="${pageContext.request.contextPath}/resources/images/watermelon_cart.jpg" width="90%"></td>
				            	<td class="cartItem_product">
				            		<div class="cartItem_product">
				            			<div class="text-left">
				            				<a href="#">
					             				고재승 꿀수박, 
					            				<span class="product_option">4kg</span>
					            			</a>
				            			</div>
				            		</div>
				            	</td>
				            	<td class="cartItemOption">
		            				<span class="product_price">28000원</span>
		            				<label class="product_quantity">
	            						<input class="productQuantity" type="number" min="1" max="50" name="1" value="1">
	            						<input class="quantityChange d-none" type="button" value="수량변경">
		            				</label>
		            				<button class="productDelete"></button>
				            	</td>
				            	<td class="cartItemPrice">
				            		<div>28000원</div>
				            	</td>
				            	<td>3000원</td>
				            </tr>
				            <tr class="cart_total_price text-right">
					        	<td colspan="6" class="p-3">
					        		<span>상품가격 <span class="totalPriceRocket font-weight-bold">0</span>원 </span>
					        		<span class="symbol_plus_r mx-2"></span>
					        		<span>배송비 <strong class="totalDeliveryRocket">0</strong>원</span>
					        		<span class="symbol_equal_r mx-2"></span>
					        		<span>주문금액 <span class="totalOrderPriceRocket font-weight-bold">0</span>원</span>
					        	</td>
					        </tr>
						</tbody>
						<!-- 판매자배송 상품 -->
						<tbody class="cartTableBodyNormal">
						</tbody>
					</table>
					<!-- 전체 선택 -->
					<div class="cartSelect p-2">
						<label>
		                    <input type="checkbox" class="cboxAll"> <span>전체선택</span>
		                    <span>( <em id="checkCount">0</em> / <span id="productCount">0</span> )</span>
		                </label>
		               	<button class="checkedAllDelete">선택삭제</button>
        			</div>
                    <!-- 할인쿠폰 -->
                    <div class="cartCoupon">
                    </div>
					<!-- 총 구매가격 -->
					<div class="cartFinalPrice">
						<span>총 상품가격 <span class="finalProductPrice font-weight-bold">0</span>원</span>
						<span class="cartFinalDiscount d-none">
							<img src="${pageContext.request.contextPath}/resources/images/minus.gif" class="mx-2">
							<span>총 할인 <span class="finalDiscountPrice font-weight-bold text-danger">0</span>원</span>
						</span>
						<span class="cartFinalDelivery">
							<img src="${pageContext.request.contextPath}/resources/images/plus.gif" class="mx-2">
							<span>총 배송비 <span class="finalDeliveryPrice font-weight-bold">0</span>원</span>
						</span>
						<span class="cartFinalTotal">
							<img src="${pageContext.request.contextPath}/resources/images/equal.gif" class="mx-2">
							<span>총 주문금액 <span class="finalTotalPrice font-weight-bold text-danger">0원</span></span>
						</span>
					</div>
					<!-- 구매버튼 -->
					<div class="orderBtns text-center">
						<a class="shopping_btn" href="//www.coupang.com">계속 쇼핑하기</a>
						<a class="buy_btn" href="order.html">구매하기</a>
					</div>
					<!-- 장바구니에 담은 상품이 없을 경우 -->
					<div class="cartNoItem d-none">
						<p>장바구니에 담은 상품이 없습니다.</p>
						<a href="https://www.coupang.com/"></a>
					</div>
				</div>
			</section>
		</div>

		<footer class="footer-frame">
	        <div class="footer-layer1">
	            <a href="https://news.coupang.com/" target="_blank">회사소개</a>
	            <a href="https://ir.aboutcoupang.com/English/home/" target="_blank">Investor Relations</a>
	            <a href="https://rocketyourcareer.kr.coupang.com" target="_blank">인재채용</a>
	            <a href="https://wing.coupang.com/vendor/joining/welcome?inflow=WEB_FOOTER_B">입점 / 제휴문의</a>
	            <a href="https://csmessenger.coupang.com/cs-center/notice/main">공지사항</a>
	            <a href="https://csmessenger.coupang.com/cs-center/voc/main">고객의 소리</a>
	            <a href="/np/policies/terms">이용약관</a>
	            <a href="https://privacy.coupang.com/ko/center/coupang" style="font-weight: bold;"><b>개인정보 처리방침</b></a>
	            <a href="https://rocketpay.coupang.com/rocketpay/operationTerms/coupangPcFooter">쿠팡페이 이용약관</a>
	            <a href="https://privacy.coupang.com/ko/land/coupay" style="font-weight: bold;"><b>쿠팡페이 개인정보처리방침</b></a>
	            <a href="/np/safety">신뢰관리센터</a>
	            <a href="https://partners.coupang.com/" target="_blank">제휴마케팅</a>
	            <a href="https://ads.coupang.com" target="_blank">광고안내</a>
	        </div>
	
	        <div class="footer-layer2">
	            <h1><a href="https://www.coupang.com/" title="COUPANG">COUPANG</a></h1>
	            <div>
	               <address>
				                  상호명 및 호스팅 서비스 제공 : 쿠팡(주)<br>
				                  대표이사 : 강한승,박대준<br>
				                  서울시 송파구 송파대로 570 <br>
				                  사업자 등록번호 : 120-88-00767 <br>
				                  통신판매업신고 : 2017-서울송파-0680<br>
	                  <a class="licensee"
	                     href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208800767"
	                     target="_blank" title="사업자정보 확인">사업자정보 확인 &gt;</a>
	               </address>
	               <div class="contact-info">
	                  <a class="call-center" href="https://csmessenger.coupang.com/cs-center/chat/main" title="365 고객센터">
	                     <strong>365고객센터</strong> | 전자금융거래분쟁처리담당<br>
	                     <em>1577-7011 (유료)</em>
	                     	서울시 송파구 송파대로 570<br>
	                     <span class="contact-fax">email : help@coupang.com</span>
	                  </a>
	               </div>
	               <p class="safe-service">
	                  <strong>우리은행 채무지급보증 안내</strong><br>
	                  <span>
	                    	당사는 고객님이 현금 결제한 금액에 대해<br>우리은행과 채무지급보증 계약을 체결하여<br>안전거래를 보장하고 있습니다.<br>
	                  </span>
	                  <a href="https://www.coupang.com/np/etc/popWooriService" target="_blank"
	                     style="text-decoration: underline;" title="서비스 가입사실 확인">서비스 가입사실 확인
	                     &gt;</a>
	               </p>
	            </div>
	         </div>
	
	         <div class="footer-layer3">
	            <div class="certification-list">
	            </div>
	         </div>
	         
         	 <div class="footer-layer4">
             	<div class="coupang-copyright">
               		<p class="info" style="padding-top: 9px;">사이버몰 내 판매되는 상품 중에는 쿠팡에 등록한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어
				                  있습니다.<br>
				                  마켓플레이스(오픈마켓) 상품의 경우 쿠팡은 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br>
				                  쿠팡은 마켓플레이스(오픈마켓) 상품, 거래정보 및 거래 등에 대하여 책임을 지지않습니다.<br>
				                  쿠팡은 소비자 보호와 안전거래를 위해 신뢰관리센터(CM112@coupang.com)를 운영하고 있으며, 관련 분쟁이 발생할 경우 별도의 분쟁 처리절차에 의거 분쟁이 처리됩니다.<br>
				                  Copyright © Coupang Corp. 2010-2022 All Rights Reserved.
               		</p>
               		<ul class="sns-link">
                  		<li><a href="https://www.facebook.com/Coupang.korea" target="_blank" class="facebook"
                        	title="쿠팡 페이스북">쿠팡 페이스북</a></li>
                  		<li><a href="https://news.coupang.com/" target="_blank" class="blog" title="쿠팡 뉴스룸">쿠팡 뉴스룸</a></li>
                  		<li><a href="https://www.instagram.com/coupang" target="_blank" class="instagram" title="쿠팡 인스타그램">쿠팡
                        	인스타그램</a></li>
               		</ul>
            	</div>
         	</div>
		</footer>
	</body>
</html>