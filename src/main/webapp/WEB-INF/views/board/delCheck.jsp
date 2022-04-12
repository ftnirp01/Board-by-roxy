<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>견적서</title>
</head>
<body>

<div style="text-align: center;">
<h1>견적서</h1>
</div>

<hr>
                        <div style="text-align: center;">
                            <table summary="번호, 사진, 제품명, 수량, 적립, 가격, 배송비, 취소">
                                <colgroup>
                                    <col width="180" />
                                    <col width="150" />
                                    <col width="150" />
                                    <col width="150" />
                                    <col width="150" />
                                    <col width="150" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col"><div class="tb-center">번호</div></th>
                                        <th scope="col"><div class="tb-center">상품명</div></th>
                                        <th scope="col"><div class="tb-center">수량</div></th>
                                        <th scope="col"><div class="tb-center">적립</div></th>
                                        <th scope="col"><div class="tb-center">금액</div></th>
                                        <th scope="col"><div class="tb-center">배송비</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                               </tbody>
                            </table>
                        </div>
<hr>
 
<c:forEach items="${cart}" var = "cart" varStatus="status">
							<div style="text-align: center;">
								<table>
								 <colgroup>
		                                    <col width="180" />
		                                    <col width="150" />
		                                    <col width="150" />
		                                    <col width="150" />
		                                    <col width="150" />
		                                    <col width="150" />
		                                </colgroup>	
								    	<thead>
		                                    <tr>
		                                        <th scope="col"><div class="tb-center">${status.count}</div></th>
		                                        <th scope="col"><div class="tb-center">${cart.cartName }</div></th>
		                                        <th scope="col"><div class="tb-center">${cart.cartQun }개</div></th>
		                                        <th scope="col"><div class="tb-center">${cart.point }pt</div></th>
		                                        <th scope="col"><div class="tb-center">${cart.cartPrice }</div></th>
		                                        <th scope="col"><div class="tb-center">${cart.delPrice }</div></th>
		                                    </tr>
		                               	</thead>
									</table>
									<hr>
								</div>
</c:forEach>
<br><br><br><br><br><br><br><br><br><br>
<hr>
<hr>

<div style="text-align: center;">
<h3>이용해주셔서 감사합니다.</h3>
</div>



</body>
</html>