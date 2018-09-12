<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="../Template/header.jsp"></jsp:include>


<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
</head>
<body>
<jsp:include page="../Template/manu.jsp"></jsp:include>


<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">มหาลัย</h1>
  </div>
</div>
<div class="container" >
		<form name="check" action="Checking" method="post">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading">IDCard</div>
				<div class="panel-body">
					<%
						if (result.equals("F")) {
					%>
					<div class="alert alert-danger">
						<strong>ไม่เป็น </strong> สมาชิก !!
					</div>
					<%
						}else if(result.equals("L")){
					%>
							<div class="alert alert-success">
						<strong>Success </strong> สำเร็จ
					</div>
					<%} %>
			</div>			
    <div class="form-group">
     <label for="exampleInputEmail1">Id card</label> <input type="text"
							class="form-control" placeholder="ID card" name="idcard">
      </div>
 
   
    <div class="panel-footer">
					<button type="submit" class="btn btn-default">Submit</button>
				
	 </div>
	
    </div>
  </form>
  </div>
</div>

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
</script>
</body>
</html>