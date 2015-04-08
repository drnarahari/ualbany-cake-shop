package project;

import java.io.*;

import java.util.*;

import java.sql.*;

import javax.servlet.*;

import javax.servlet.http.*;

public class RegisterUser extends HttpServlet{

  private ServletConfig config;
  //Setting JSP page
  String page="Registered.jsp";
  public void init(ServletConfig config)
  throws ServletException{
 this.config=config;
 }
  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException
{
  PrintWriter out = response.getWriter();
  //Establish connection to MySQL database
  String connectionURL = "jdbc:mysql://localhost:3306/";
  Connection connection= null;
  ResultSet rs;
  response.setContentType("text/html");
  try {
 // Load the database driver
  Class.forName("com.mysql.jdbc.Driver");
  // Get a Connection to the database
  connection = DriverManager.getConnection(connectionURL, "root", "root"); 
 String name = request.getParameter("name");
 String phone = request.getParameter("phone");
 String username = request.getParameter("username");
 String password = request.getParameter("password");
 String address = request.getParameter("address");
 String type = request.getParameter("userType");
 
 String sql = "insert into ualbcake.users(name,phone,uname,password,address,userType) values ('"+name+"','"+phone+"','"+username+"','"+password+"','"+address+"','"+type+"') ";
 
  Statement s = connection.createStatement();
  s.executeUpdate (sql);
  rs = s.getResultSet();
  rs.close ();
  s.close ();
  }catch(Exception e){
  System.out.println("Exception is ;"+e);
  }

  RequestDispatcher dispatcher = request.getRequestDispatcher(page);
  if (dispatcher != null){
dispatcher.forward(request, response);
  } 
  }
}