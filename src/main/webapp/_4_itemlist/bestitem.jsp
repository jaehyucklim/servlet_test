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
  <h2>�α� ��� table</h2>
  <p>��ǰ�� �Է��ϼ���.</p>  
  <input class="form-control" id="myInput" type="search" placeholder="Search..">
  <br>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>��ǰ�̸�</th>
        <th>����</th>
        <th>������</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <td>��ġ</td>
        <td>2000</td>
        <td>����</td>
      </tr>
      <tr>
        <td>��Ÿ��</td>
        <td>700</td>
        <td>�ǰ���</td>
      </tr>
      <tr>
        <td>���</td>
        <td>1000</td>
        <td>���</td>
      </tr>
      <tr>
        <td>������</td>
        <td>300,000</td>
        <td>�ÿ��ѳ���</td>
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
      //toggle(true): ������ ��Ҹ� ���̵��� �����ϴ� �޼ҵ�
   	  //toggle(false): ������ ��Ҹ� style="display: none;" �Ӽ��� �߰��Ǿ� ������ �ʵ��� �մϴ�.
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

</body>
</html>