<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCss.jsp" %>
<style type="text/css">
a{
text-decoration: none;
color: black;
}
a: hover{
text-decoration: none;
color: black;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
  <div class="container">
  <div class="row p-5">
  <div class="col-md-3">
  <a href="add_books.jsp">
  <div class="card">
  <div class="card-body text-center">
   <i class="fa-solid fa-circle-plus fa-4x text-warning "></i><br>
    <h4>Add Paintings</h4>
  </div>
  </div>
  </a>
  </div>
   <div class="col-md-3">
   <a href="books.jsp">
  <div class="card">
  <div class="card-body text-center">
  <i class="fa-solid fa-image fa-4x text-success"></i><br>
    <h4>All Paintings</h4>
  </div>
  </div>
  </a>
  </div>
   <div class="col-md-3">
   <a href="order.jsp">
  <div class="card">
  <div class="card-body text-center">
  <i class="fa-solid fa-box-open fa-4x text-danger"></i><br>
    <h4>Order</h4>
  </div>
  </div>
  </a>
  </div>
   <div class="col-md-3">
  <div class="card">
  <div class="card-body text-center">
   <i class="fa-solid fa-arrow-right-from-bracket fa-4x text-info"></i><br>
    <h4>Logout</h4>
  </div>
  </div>
  </div>
  </div>
  </div>
  <div style="margin-top: 130px";>
     <%@include file="footer.jsp" %></div>
</body>
</html>