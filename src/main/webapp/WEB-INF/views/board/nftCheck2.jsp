<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Biology</title>
<script  type="text/javascript">
  function openCloseToc() {
    if(document.getElementById('toc-content').style.display === 'block') {
      document.getElementById('toc-content').style.display = 'none';
      document.getElementById('toc-toggle').textContent = '보기';
    } else {
      document.getElementById('toc-content').style.display = 'block';
      document.getElementById('toc-toggle').textContent = '닫기';
    }
  }
</script>

<style>
  #toc-content {
    display: none;
  }
  #toc-toggle {
    cursor: pointer;
    color: #2962ff;
  }
  #toc-toggle:hover {
    text-decoration: underline;
  }
</style>

</head>
<body>
<div style="text-align: center;">
<img style="width: 400px; height: 400px;" src="img/nft2.jpg" alt="">
</div>
<hr>

<div style="text-align: center;">
<h2>Biology</h2>
<p>출시가 : <strong>620,000</strong></p>
<p>현재가 : <strong>813,290</strong>
<p>상품주가 (1년봉)</p> 
<a id="toc-toggle" onclick="openCloseToc()">보기</a>
<br>
<div id="toc-content">
 <img alt="" src="img/nft2_stock.jpg">
</div>

</div>



</body>
</html>