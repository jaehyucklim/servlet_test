<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<%-- https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>인기 목록 table</h2>
  <p>상품을 입력하세요.</p>  
  <input class="form-control" id="myInput" type="search" placeholder="Search..">
  <br>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>상품이름</th>
        <th>가격</th>
        <th>제조사</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <td>참치</td>
        <td>2000</td>
        <td>동원</td>
      </tr>
      <tr>
        <td>비타민</td>
        <td>700</td>
        <td>건강한</td>
      </tr>
      <tr>
        <td>라면</td>
        <td>1000</td>
        <td>농심</td>
      </tr>
      <tr>
        <td>에어컨</td>
        <td>300,000</td>
        <td>시원한나라</td>
      </tr>
    </tbody>
  </table>
  
  <p></p>
</div>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").each(function() {
    	console.log($(this).text().toLowerCase().indexOf(value) > -1)
      //toggle(true): 선택한 요소를 보이도록 설정하는 메소드
   	  //toggle(false): 선택한 요소를 style="display: none;" 속성이 추가되어 보이지 않도록 합니다.
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

</body>
</html>
