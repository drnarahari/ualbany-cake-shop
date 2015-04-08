
package project;
 
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;


 
public class LoginDAO
{
static Connection currentCon = null;
static ResultSet rs = null;
static ResultSet rs1 = null;

public static LoginBean login(LoginBean bean)
{
Statement stmt = null;
String uname = bean.getUsername();
String password = bean.getPassword();
String searchQuery = "select * from ualbcake.users where uname='" + uname + "' AND password='" + password + "'";


 
try
{
//connecting to the DB
currentCon = ConnectionManager.getConnection();
stmt=currentCon.createStatement();
rs = stmt.executeQuery(searchQuery);

boolean userExists = rs.next();
 
if (!userExists)
{
System.out.println("Username/Password entered is Incorrect or User doesnot Exists.");
bean.setValid(false);
}
else if (userExists)
{
String firstName = rs.getString("name");
//String lastName = rs.getString("LastName");
String userType = rs.getString("userType");
System.out.println("Welcome " + firstName);
bean.setFirstName(firstName);
//bean.setLastName(lastName);
bean.setValid(true);
bean.setUserType(userType);
}
 
}
catch (Exception ex)
{
System.out.println("Log In failed: An Exception has occurred! " + ex);
}
return bean;
}


}
