package com.adminservlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ArtDAOImp;
import com.entity.art_details;
@WebServlet("/add_art")
@MultipartConfig
public class addart extends HttpServlet{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
String artName=req.getParameter("pname");
String artist=req.getParameter("artist");
String price=req.getParameter("price");
String category=req.getParameter("category");
String paintingStatus=req.getParameter("pstatus");
Part part=req.getPart("pimg");
String fileName =part.getSubmittedFileName();
 art_details a =new art_details(artName, artist, artist, category, paintingStatus, paintingStatus, fileName, "admin");

 ArtDAOImp dao=new ArtDAOImp(DBConnect.getConn());
boolean f= dao.addart(a);
 HttpSession session=req.getSession();
 
 if(f)
 {
 
 session.setAttribute("succMsg","Art Added Successfully");
 resp.sendRedirect("admin/add_art.jsp");
 }else {
 session.setAttribute("failedMsg","Something wrong on Server");
 resp.sendRedirect("admin/add_art.jsp");
 }
 

} catch (Exception e) {
e.printStackTrace();
}
}

}