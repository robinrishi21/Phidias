<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Orders</title>
<%@include file="allCss.jsp" %>
</head>
<body>
 <%@include file="navbar.jsp" %>
  <h3 class="text-center">Hello Admin</h3>
   <table class="table table-striped ">
  <thead class="bg-secondary ">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">E-Mail</th>
      <th scope="col">Adress</th>
      <th scope="col">Art Name</th>
      <th scope="col">Artist</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
       <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
       <td>Mark</td>
     
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>Thornton</td>
       <td>@fat</td>
    </tr>
  </tbody>
</table>
</div>
  <div style="margin-top: 130px";>
     <%@include file="footer.jsp" %></div>
</body>
</html>