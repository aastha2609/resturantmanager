

package restaurant_billing;

import java.sql.*;
import javax.swing.*;
public class Restaurant_Billing implements globalvariables {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try
{
Connection myconnection;


myconnection=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
try
{
String a="select * from logintable";
PreparedStatement mystatement=myconnection.prepareStatement(a);

ResultSet myresult=mystatement.executeQuery();

if(myresult.next())
{
Login obj=new Login();
obj.setVisible(true);

}
else
{
JOptionPane.showMessageDialog(null, "Running software for first time, create admin account first");
Create_Admin obj=new Create_Admin();

obj.setVisible(true);
}
}
catch(Exception e)
{
JOptionPane.showMessageDialog(null, "Error in Query " + e.getMessage());
}
finally
{
myconnection.close();
}



}
catch(Exception e)
{
JOptionPane.showMessageDialog(null, "Error in Connection " + e.getMessage());
}
    }
    
}

