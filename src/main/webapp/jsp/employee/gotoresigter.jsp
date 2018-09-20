<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="../Template/header.jsp"></jsp:include>
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
<br>
<h2 align="center">เพิ่มบัญชีลูกค้า</h2>
<br>

<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
<form style="margin-left: 30%;" class="form-horizontal" action="gotoreg2" method="POST" name="gotoregister" > 
<%
						 if(result.equals("L")){
					%>
							<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%} %>
  <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="idcard" placeholder="ปชช" name="idcard">
    </div>
  </div>
  <div class="form-group">
    <label for="inputUsername3" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="fristname" placeholder="fristname"  name="fristname">
    </div>
  
    <div class="col-sm-2">
      <input type="text" class="form-control" id="lastname" placeholder="lastname"  name ="lastname">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress3" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-4">
      <textarea  rows="5" class="form-control" id="Address" placeholder="Address" name ="address"></textarea>
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputtelephone" class="col-sm-2 control-label">telephone</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="telephone" placeholder="telephone" name="telephone">
    </div>
  </div>
  
   <div class="form-group row">
<div class="form-group col-md-3">
   </div>
<div class="form-group col-md-2">

					</div>
					</div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success">save</button>
       <button type="reset" class="btn btn-primary">deleed</button>
    </div>
  </div>
  </form>
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
</script>


</html>