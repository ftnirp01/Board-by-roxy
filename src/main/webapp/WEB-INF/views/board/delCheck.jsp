<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
</head>
<body>

<div style="text-align: center;">
<h1>������</h1>
</div>

<hr>
                        <div style="text-align: center;">
                            <table summary="��ȣ, ����, ��ǰ��, ����, ����, ����, ��ۺ�, ���">
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
                                        <th scope="col"><div class="tb-center">��ȣ</div></th>
                                        <th scope="col"><div class="tb-center">��ǰ��</div></th>
                                        <th scope="col"><div class="tb-center">����</div></th>
                                        <th scope="col"><div class="tb-center">����</div></th>
                                        <th scope="col"><div class="tb-center">�ݾ�</div></th>
                                        <th scope="col"><div class="tb-center">��ۺ�</div></th>
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
		                                        <th scope="col"><div class="tb-center">${cart.cartQun }��</div></th>
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
<h3>�̿����ּż� �����մϴ�.</h3>
</div>



</body>
</html>