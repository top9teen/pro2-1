<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<%
String check = "";
%>
<%
	check = (String) request.getAttribute("messessError");
%>
</head>
<body>

<div class="container" >
		<form name="login" action="rent" method="post">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading">IDCard</div>
				<div class="panel-body">
					<%
						if (check.equals("F")) {
					%>
					<div class="alert alert-danger">
						<strong>Faill ! </strong> You Login Faill !!
					</div>
					<%
						}else if(check.equals("L")){
					%>
							<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%} %>
			</div>			
    <div class="form-group">
     <label for="exampleInputEmail1">Id card</label> <input type="text"
							class="form-control" placeholder="ID card" name="idcard">
      </div>
 
   
    <div class="panel-footer">
					<button type="submit" class="btn btn-default">Submit
					</button>
				
	 </div>
	
    </div>
  </form>
</body>
</html>