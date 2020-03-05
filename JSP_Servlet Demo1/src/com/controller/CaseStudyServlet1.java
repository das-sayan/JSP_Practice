package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CaseStudy1;

@WebServlet("/CaseStudyServlet1")
public class CaseStudyServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CaseStudy1 obj = new CaseStudy1();
		
		String emp_id = obj.setEmp_id(request.getParameter("emp_id"));
		PrintWriter out = response.getWriter();  
		try{  
			String url="jdbc:mysql://localhost:3306/mydb";
			String username="root";
			String password="1234";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			System.out.println("connected");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from user where ID='"+emp_id+"'");
			while(rs.next()){
				request.setAttribute("emp_id",rs.getString(1));
				request.setAttribute("name",rs.getString(2));
		        }
		
			request.getRequestDispatcher("fetch.jsp").forward(request, response);
		}catch (Exception e2) {System.out.println(e2);}  
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CaseStudy1 obj = new CaseStudy1();
		String emp_id = obj.setEmp_id(request.getParameter("emp_id"));
		String name = obj.setName(request.getParameter("name"));
		PrintWriter out = response.getWriter();  
		try{  
			String url="jdbc:mysql://localhost:3306/mydb";
			String username="root";
			String password="1234";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			System.out.println("connected");
			
			PreparedStatement ps=con.prepareStatement(  
			"insert into user values(?,?)");  
			ps.setString(1,emp_id);  
			ps.setString(2,name);  		          
			int i=ps.executeUpdate();  
			if(i>0)  
			{	out.print("<font color=blue>You are successfully registered...</font>");
				
			}
			else 
				out.print("<font color=red>You are not successfully registered...</font>");  
			     		        
			}catch (Exception e2) {System.out.println(e2);}  
				out.close();  
		}
		
	}
