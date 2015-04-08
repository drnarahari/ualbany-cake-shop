package project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        try
        {
            System.out.println("In the Login Servlet");
            LoginBean user = new LoginBean();
            String username1 = request.getParameter("username");
            String password1 = request.getParameter("password");
            user.setUserName(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setFirstName(request.getParameter("firstName"));
            user.setLastName(request.getParameter("lastName"));
            user = LoginDAO.login(user);
           
            if(username1==null|| username1.length()==0){
          	  request.setAttribute("error", "Username field cannot be empty");
      	        RequestDispatcher rd = request.getRequestDispatcher("/LoginPage.jsp");
      	          rd.forward(request, response);   
           } else if(password1==null|| password1.length()==0){
           	  request.setAttribute("error", "Password field cannot be empty");
    	        RequestDispatcher rd = request.getRequestDispatcher("/LoginPage.jsp");
    	          rd.forward(request, response); 	   
           }
           else 
            if(user.isValid()) 
            {
                HttpSession session = request.getSession(true);
                session.setAttribute("currentFirstName",user.getFirstName());
                session.setAttribute("currentLastName",user.getLastName());
                response.sendRedirect("index.jsp");
            }else{
            	  request.setAttribute("error", "Username and Password dont match");
      	        RequestDispatcher rd = request.getRequestDispatcher("/LoginPage.jsp");
      	          rd.forward(request, response); 
            }
        } catch (Throwable exc)
        {
            System.out.println(exc);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
