<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Close &times;</button>
  <a href="index1" class="w3-bar-item w3-button w3-padding-24"  style="font-size: 20px; font-family: cursive;">หน้าแรก</a>
  <a href="Check" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">เช่าภาชนะ</a>
  <a href="withdrawal" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">เบิกภาชนะ</a>
  <a href="member" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">สมาชิก</a>
  <a href="admin" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">ผู้ดูแลระบบ</a>
  <a href="report" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">สรุปรายงาน</a>
  <a href="login" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">ออกจากระบบ</a>
</div>

<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">สมาชิก</h1>
  </div>
</div>

<div class="form-group row">
</div>
<div class="form-group row">
<div class="form-group col-md-4">
    <input type="text" name="" class="form-control" value="ข้อมูลสมาชิก">
</div>

<div class="form-group col-md-4">
<input type="text" name="" class="form-control" value="เพิ่มสมาชิกใหม่">
</div>
</div>
<!-- <img src="img_car.jpg" alt="Car" style="width:100%"> -->
<form class="form-horizontal">
  <div class="form-group">
    <label for="inputID3" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-3">
      <input type="ID" class="form-control" id="inputId3" placeholder="ID">
    </div>
  </div>
  <div class="form-group">
    <label for="inputUsername3" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-2">
      <input type="fristname" class="form-control" id="inputUsername3" placeholder="fristname">
    </div>
  
    <div class="col-sm-2">
      <input type="lastname" class="form-control" id="inputUsername3" placeholder="lastname" >
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress3" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-7">
      <input type="address" class="form-control" id="inputAddress3" placeholder="Address">
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputAddress3" class="col-sm-2 control-label">telephone</label>
    <div class="col-sm-3">
      <input type="telephone" class="form-control" id="inputAddress3" placeholder="telephone">
    </div>
  </div>
  <div class="form-group row">
<div class="form-group col-md-3">
   </div>
<div class="form-group col-md-1">
   <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> gender
    <span class="caret"></span></button>
    
    <ul class="dropdown-menu">
      <li><a href="#">male</a></li>
      <li><a href="#">female</a></li>
    </ul>
  </div>
</div>
</div>
  <div class="form-group">
    <label for="inputCall3" class="col-sm-2 control-label">password</label>
    <div class="col-sm-2">
      <input type="password" class="form-control" id="inputCall3" placeholder="password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">save</button>
       <button type="submit" class="btn btn-primary">deleed</button>
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