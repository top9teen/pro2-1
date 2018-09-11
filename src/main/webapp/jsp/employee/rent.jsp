<%@page import="com.bru.model.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.11.0.js'></script>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
    background-color: LightGray;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
th {
    text-align: center;
}
input {
        
            border-top: transparent !important;
            border-left: transparent !important;
            border-right: transparent !important;
            border-bottom: transparent !important;
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
<% UserBean bean = null; %>
<% bean = (UserBean) request.getSession().getAttribute("1");%>

</head>
<body>
<form action="rent22" method="POST" name="rent2">

<h2 style="background-color:Tomato; text-align: center;">เช่าภาชนะ</h2>
<input type="hidden" id="idcard" name="idcard" value="<%=bean.getIdcard() %>">
<table style="width:100%">
  <tr>
     <th>สินค้า</th>
    <th>จำนวน</th> 
    <th>ราคา</th>
  </tr>
  <tr>
    <td>ชาม * 2</td>
    <td ><input  value =""id ="no1" type="number" name="CB001"></td>
    <td id ="po1"></td>
  </tr>
  <tr>
    <td>ถ้วยน้ำซุป * 2</td>
    <td ><input  value =""id ="no2" type="number" name="CC001"></td>
    <td id ="po2"></td>
  </tr>
  <tr>
    <td>ถ้วยน้ำจิ้ม * 1</td>
   <td ><input  value =""id ="no3" type="number" name="CC002"></td>
    <td id ="po3"></td>
  </tr>
   <tr>
    <td>จาน * 2</td>
   <td ><input  value =""id ="no4" type="number" name="CD001"></td>
    <td id ="po4"></td>
  </tr>
    <tr>
    <th>รวม:</th>
    <td colspan="2"id ="so1"></td>
  </tr>
</table>

<script type='text/javascript'>
$(function() {

    $('#no1').keyup(function() {  
    	
        updateTotal();
    });
     $('#no2').keyup(function() { 
    	
        updateTotal();
    });
    
    $('#no3').keyup(function() { 
    	
        updateTotal();
    });
    
    $('#no4').keyup(function() {  
        updateTotal();
    });
    
   var updateTotal = function () {
      var input1 = parseInt($('#no1').val());
      var input2 = parseInt($('#no2').val());
      var input3 = parseInt($('#no3').val());
      var input4 = parseInt($('#no4').val());
       var totals1 = parseFloat(input1*2) || 0;
         var totals2 = parseFloat(input2*2) ||0 ;
           var totals3 = parseFloat(input3*2) ||0 ;
            var totals4 = parseFloat(input4*1) ||0 ;
   
      $('#po1').text(totals1);
        $('#po2').text(totals2);
          $('#po3').text(totals3);
           $('#po4').text(totals4);
           var totals5 = parseFloat(totals1 + totals2 + totals3 + totals4) ||"" ;
             $('#so1').text(totals5);
    };
  // output_total.text(total);

 });
</script>
<div class="panel-footer" align="center">
<a href="index1" class="btn btn-primary">Home</a>
					<button type="submit" class="btn btn-primary">Submit</button>
					 <button type="reset" class="btn btn-primary">Clear</button>
        </div>
   
</form>
</body>
</html>