<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
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
  <a href="container" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">ภาชนะ</a>
  <a href="login" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">ออกจากระบบ</a>

</div>

<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">ภาชนะ</h1>
  </div>
</div>
  <tr>  <tr>  <tr>
<!-- <img src="img_car.jpg" alt="Car" style="width:100%"> -->
<div class="form-group row">
    <div class="form-group col-md-12">

    </div>

<div class="form-group row">
    <div class="form-group col-md-3">

    </div>

    <div class="form-group col-md-6">
        <form class="">

    <table class="table table-bordered">

            <tr>
              <th class="col-md-2 iefix">ภาขนะ</th>
              <th class="col-md-3 iefix">จำนวน</th>


            </tr>


            <tr >
              <td>ถ้วย</td>
              <td>50</td>
            </tr>

            <tr >
              <td>จาน</td>
              <td>100</td>
            </tr>

           <tr >
              <td>ช้อนซ่อม</td>
              <td>120</td>
            </tr>

           <tr >
               <td>ชาม</td>
               <td>120</td>
             </tr>



      </table>

    </form>
</div>


      <div class="form-group col-md-3">

        </div>

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
</script>
</html>