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
<%
		List<DetailrentBean> list = null;
		Integer a = 0;
	%>
	<%
		list = (List<DetailrentBean>) request.getSession().getAttribute("list");
	%>
</head>
<body>
<jsp:include page="../Template/manu.jsp"></jsp:include>
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

    <div class="form-group col-md-10">
        <form class="">

    <table class="table table-bordered">

            <tr>
              <th class="col-md-1 iefix">no</th>
              <th class="col-md-2 iefix">datetime</th>
              <th class="col-md-2 iefix">id</th>
              <th class="col-md-1 iefix">ถ้วย</th>
              <th class="col-md-1 iefix">จาน</th>
              <th class="col-md-1 iefix">ชาม</th>
              <th class="col-md-1 iefix">ถ้วยน้ำจิ้ม</th>
              <th class="col-md-1 iefix">รวมรายการ</th>
              <th class="col-md-2 iefix">ยอดเงิน</th>

            </tr>

<%
						for (int i = 0; i < list.size(); i++) {
					%>
            <tr >
            
              <td><%=a = a + 1%></td>
              <td><%=list.get(i).getDatedateday() + " / " +list.get(i).getSimpleyear()+ " / " +list.get(i).getDatedateyear() %></td>
              <td><%=list.get(i).getIdcard() %></td>
              <td><%=list.get(i).getCC001() %></td>
              <td><%=list.get(i).getCD001() %></td>
              <td><%=list.get(i).getCB001()%></td>
              <td><%=list.get(i).getCC002() %></td>
              <td><%=list.get(i).getAll() %></td>
              <td><%=list.get(i).getNumber() %></td>
             
            </tr>
 <%
						}
					%>
      </table>

    </form>
</div>
<div class="form-group">
  <div class="col-sm-offset-2 col-sm-10">
    <button type="submit" class="btn btn-default">print</button>
     <button type="submit" class="btn btn-primary">cancle</button>
  </div>
</div>

      <div class="form-group col-md-1">

        </div>

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