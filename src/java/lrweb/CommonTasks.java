/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lrweb;
import java.sql.*;
/**
 *
 * @author rishabh
 */
public class CommonTasks {
    public static int getNextLLApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from LearningLicenseJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    public static int getNextPLApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from PermanentLicenseJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    public static int getNextLRApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from LicenseRenewalJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    public static int getNextDLApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from DuplicateLicenseJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    public static int getNextNCVApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from NewClassVehicleAdditionJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    public static int getNextNRApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from NewRegistrationJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    public static int getNextDRApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from DuplicateRegistrationJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    public static int getNextRRApplicationNo(){
        int counter=0;
        try{
            PreparedStatement stmt=DatabaseConnection.getConnection().prepareStatement("select count(*) from RegistrationRenewalJSP");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                counter=rs.getInt(1);
                counter++;
            }
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return counter;
    }
    
}
