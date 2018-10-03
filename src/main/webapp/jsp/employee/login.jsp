<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<jsp:include page="../Template/header.jsp"></jsp:include>

<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
<style type="text/css">
body {
	background-image: url("access/img/bg/pg1.png");
}

</style>
</head>
<body>

 <div class="container" >
		<form name="login" action="login" method="post">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
					<%
						if (result.equals("F")) {
					%>
					<div class="alert alert-danger">
						<strong>Faill ! </strong> You Login Faill !!
					</div>
					<%
						}else if(result.equals("L")){
					%>
							<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%} %>
			</div>			
    <div class="form-group">
     <label style="margin-left: 5mm;" for="exampleInputEmail1">Id card</label> <input type="text"
							class="form-control" placeholder="ID card" name="idcard">
      </div>
      
      <div class="form-group">
       <label style="margin-left: 5mm;" for="exampleInputPassword1">Password</label> <input
				type="password" class="form-control" placeholder="Password"
							name="password">
           </div>
   
 
   
    <div class="panel-footer">
					<button type="submit" class="btn btn-default">Submit
					</button>
				
					
	 </div>
	
    </div>
  </form>
</div>
</body>
</html>