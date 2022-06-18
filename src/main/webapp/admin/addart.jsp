<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Paintings</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
<%@include file="navbar.jsp" %>

<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
 <h4 class="text-center">Add Art</h4>
   <c:if test="${not empty succMsg }">
     <p class="text-center text-success">$(succMsg)</p>
      <c:remove var="succMsg" scope="session"/>
    </c:if>  
   
    <c:if test="${not empty failedMsg }">
     <p class="text-center text-danger">$(failedMsg)</p>
      <c:remove var="failedMsg" scope="session"/>
    </c:if>  
   <form action="../add_books" method="post" enctype="multiple/form-data">
    <div class="form-group">
     <label for="exampleInputEmail">Art Name*</label>
     <input  name="pname"  type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
     <label for="exampleInputEmail">Artist Name*</label>
     <input  name="artist"  type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
     <label for="exampleInputPassword1">Price*</label>
     <input  name="price"  type="number" class="form-control" id="exampleInputEmail1" >
    </div>
     <div class="form-group">
     <label for="inputState">Category*</label>
     <select  id="inputState"  name="category" class="form-control">
     <option selected>--select--</option>
     <option value="Abstract Art">Abstract Art</option>
     <option value="Indian Painting">Indian Painting</option>
     <option value="Surrealism">Surrealism</option>
     </select>
     </div>
      <div class="form-group">
     <label for="inputState">Painting Status*</label>
     <select  id="inputState"  name="pstatus" class="form-control">
     <option selected>--select--</option>
     <option value="Active">Active</option>
     <option value="Inactive">Inactive</option>
     </select>
     </div>
       <div  class="form-group">
        <label for="exampleFormControlFile1">Upload Painting</label>
         <input name="pimg" type="file" class="form-control-file" id="exampleFormControlFile1">
       </div>
         <button type="submit" class="btn btn-primary">Add</button>
   </form>
</div>
</div>
</div>
</div>
</div>
</div>
  <div style="margin-top: 130px";>
     <%@include file="footer.jsp" %></div>
</body>
</html>