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
<style type="text/css">
 input {
        
         
            font-weight: 200;
            color:black;
            padding-left: 0;
  box-shadow: none !important;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
input[type="number"] {
    -moz-appearance: textfield;
} 

</style>
</head>
<body>
<jsp:include page="../Template/manu2.jsp"></jsp:include>
<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">report</h1>
  </div>
</div>

<!-- <img src="img_car.jpg" alt="Car" style="width:100%"> -->
<div class="form-group row">
    <div class="form-group col-md-12">

    </div>

<div class="form-group row">
    <div class="form-group col-md-1">

    </div>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>

<% List<ContainerBean> list = null ; %>
<% list = (List<ContainerBean>) request.getSession().getAttribute("list"); %>
    <div class="form-group col-md-10">
    
        <form style="margin-left: 30%;" class="form-horizontal" name = "welcome" action="gotorpse" method="post">

  
					<br><br><br>
					<div  style="margin-left: 10%;">
		<p> 1.ชาม เหลือ  <%=list.get(0).getNumber() %></p>
		<p> 2.ถ้วยน้ำซุป เหลือ  <%=list.get(1).getNumber() %></p>
		<p> 3.ถ้วยน้ำจิ้ม เหลือ  <%=list.get(2).getNumber() %> </p>
		<p> 4.จาน เหลือ  <%=list.get(3).getNumber() %></p>
					</div>
	
		
				 <h3  style="margin-left: 10%;"><span style="color: red;">*</span> ถ้าอันไหนไม่ได้เพิ่มให้ใส่   0 ด้วย</h3>	<br>
  <div class="form-group">
  <%
						 if(result.equals("L")){
					%>
					<div class="alert alert-success alert-dismissible " style=" margin-right: 50%; margin-left: 10%;">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Success </strong> Logout Success
					</div>
					<%} %>
    <label for="idcard" class="col-sm-2 control-label">ชาม</label>
    
    <div class="col-sm-4">
      <input type="number" class="form-control" id="idcard1" placeholder="ใส่จำนวน" name="CB001">
    </div>
  </div>

   <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">จาน</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="idcard2" placeholder="ใส่จำนวน" name="CD001">
    </div>
  </div>
  
  
   <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">ถ้วยน้ำจิ้ม</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="idcard3" placeholder="ใส่จำนวน" name="CC002">
    </div>
  </div>
  
   <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">ถ้วยน้ำซุป</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="idcard4" placeholder="ใส่จำนวน" name="CC001">
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
      <button type="submit" class="btn btn-success">เพิ่ม</button>
       <button type="reset" class="btn btn-primary">รีค่า</button>
    </div>
  </div>

			
    </form>
</div>


      <div class="form-group col-md-1">
        </div>

  </div>
</div>
</div>
</body>
<script type="text/javascript">

$(function() {

    $('#idcard1').keyup(function() {  
    	  $('#idcard2').val(0);
	        $('#idcard3').val(0);
	        $('#idcard4').val(0);
        updateTotal();
    });
   


 });


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