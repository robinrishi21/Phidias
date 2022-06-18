package com.user.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.DBConnect;


public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Demo() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try
		{
			int ID=Integer.parseInt(req.getParameter("Id"));
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			Connection conn=DBConnect.getConn();
			String query="insert into demo(id,name,email,phno,password) values(?,?,?,?,?)";

			PreparedStatement pst=conn.prepareStatement(query);
			pst.setInt(1, ID);
			pst.setString(2, name);
			pst.setString(3, email);
			pst.setString(4, phno);
			pst.setString(5, password);
			int rs=pst.executeUpdate();
			if(rs>0)
			{
				resp.sendRedirect("index.jsp");

			}
			
		}
		catch (Exception e) {}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}