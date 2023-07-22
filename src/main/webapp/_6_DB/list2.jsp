<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- Connection ��ü�� JNDI�� ����ϱ� ���� ��Ű�� import --%>	
<%@ page import = "java.util.*, _DB.Emp" %>	
<!DOCTYPE html>
<html>
<head>
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<meta charset="EUC-KR">
<title>ArrayList View</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
.container {
	width: 1000px;
	margin-top: 3em
}

table, h4 {
	text-align: center
}
</style>
</head>
<body>
	<div class="container">
	<p>�˻�� �Է��ϼ���.</p>  
  	<input class="form-control" id="myInput" type="search" placeholder="Search..">
  	<br>
	<% 
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");
		
		if(!list.isEmpty()) {
	%>
		<table class="table">
			<thead>
				<tr>
					<th>�����ȣ</th>
					<th>����̸�</th>
					<th>����</th>
					<th>�Ŵ���</th>
					<th>�Ի�����</th>
					<th>�޿�</th>
					<th>Ŀ�̼�</th>
					<th>�μ���ȣ</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<%
					for(Emp emp : list) {
				%>
				<tr>	
					<td><%=emp.getEmpno() %></td>
					<td><%=emp.getEname() %></td>
					<td><%=emp.getJob() %></td>
					<td><%=emp.getMgr() %></td>
					<td><%=emp.getHiredate() %></td>
					<td><%=emp.getSal() %></td>
					<td><%=emp.getComm() %></td>
					<td><%=emp.getDeptno() %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<%
			} else {
				out.println("<h4>��ȸ�� �����Ͱ� �����ϴ�.</h4>");
			}
		%>
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
