<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@page import="java.util.List"%>
       <%@page import="com.bru.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../Template/manumaster.jsp"></jsp:include>

<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">มหาลัย</h1>
  </div>
</div>
<%
		List<UserBean> list = null;
List<CustomerBean> listcus = null;
		Integer a = 0 ,b = 0;
	%>
	<%
		list = (List<UserBean>) request.getSession().getAttribute("listuser");
	listcus = (List<CustomerBean>) request.getSession().getAttribute("listcus");
	%>
<div align="center">
<button onclick="a()">พนักงาน</button>
<button onclick="b()">ลูกค้า</button>

</div>

<div class="box1" style="display: none;">
	<h2  align="center">พนักงาน </h2>
<input id="myInput" style="width: 30%" align="right" type="text"
				placeholder="ค้นหา...." class="w3-input w3-border w3-light-grey">
			<input type="hidden" id="regid" name="regid" id="regid">
			<table class="w3-table-all w3-card-4">
				<thead>
					<tr>
						<th class="text-center">ลำดับ</th>
						<th class="text-center">คำนำหน้า</th>
						<th class="text-center">Id</th>
						<th class="text-center">password</th>
						<th class="text-center">ชื่อ</th>
						<th class="text-center">นามสกุล</th>
						<th class="text-center">ที่อยู่</th>
						<th class="text-center">เบอร์โทรสัพท์</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<%
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr class="text-center">

						<td><%=a = a + 1%></td>
						<td><%=list.get(i).getGender()%></td>
						<td><%=list.get(i).getIdcard()%></td>
						<td><%=list.get(i).getPassword()%></td>
						<td><%=list.get(i).getFristname()%></td>
						<td><%=list.get(i).getLastname()%></td>
						<td><%=list.get(i).getAddress()%></td>
						<td><%=list.get(i).getTelephone()%></td>


					</tr>
					 <%
						}
					%>
				</tbody>
			</table>
			</div>
			
			<div class="box2" style="display: none;">
			<h2  align="center">ลูกค้า </h2>
			<input id="myInput" style="width: 30%" align="right" type="text"
				placeholder="ค้นหา...." class="w3-input w3-border w3-light-grey">
			<input type="hidden" id="regid" name="regid" id="regid">
			<table class="w3-table-all w3-card-4">
				<thead>
					<tr>
						<th class="text-center">ลำดับ</th>
						<th class="text-center">Id</th>
						<th class="text-center">ชื่อ</th>
						<th class="text-center">นามสกุล</th>
						<th class="text-center">ที่อยู่</th>
						<th class="text-center">เบอร์โทรสัพท์</th>
					</tr>
				</thead>
				<tbody id="myTable">
						<%
						for (int i = 0; i < listcus.size(); i++) {
					%>
					<tr class="text-center">

						<td><%=b = b + 1%></td>
							<td><%=listcus.get(i).getCuIdcard()%></td>
						<td><%=listcus.get(i).getCuFname()%></td>
						<td><%=listcus.get(i).getCuLastname()%></td>
						<td><%=listcus.get(i).getCuAddress()%></td>
						<td><%=listcus.get(i).getCuTelephone()%></td>
						


					</tr>
					 <%
						}
					%>
				</tbody>
			</table>
			
			
			</div>

</div>

</body>
<script type="text/javascript">
function w3_open() {
	  document.getElementById("main").style.marginLeft = "20%";
	  document.getElementById("mySidebar").style.width = "20%";
	  document.getElementById("mySidebar").style.display = "block";
	  document.getElementById("openNav").style.display = 'none';
	}
	function w3_close() {
	  document.getElementById("main").style.marginLeft = "0%";
	  document.getElementById("mySidebar").style.display = "none";
	  document.getElementById("openNav").style.display = "inline-block";
	}
	
	$(document).ready(
			function() {
				$("#myInput")
						.on(
								"keyup",
								function() {
									var value = $(this).val()
											.toLowerCase();
									$("#myTable tr")
											.filter(
													function() {
														$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
													});});});
</script>
<script type="text/javascript">
function a() {
	 $(".box1").show('slow');
    $(".box2").hide('slow');
	}
function b() {
	 $(".box2").show('slow');
   $(".box1").hide('slow');
	}

</script>

</html>