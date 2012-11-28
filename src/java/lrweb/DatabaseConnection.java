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
public class DatabaseConnection {
    static public Connection getConnection() throws ClassNotFoundException,SQLException
    {
     // Connection con=null;
        //try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://localhost;" +
            "databaseName=l_r;user=sa;password=rishabh123";
       Connection con = DriverManager.getConnection(connectionUrl);
      //} 
      //catch( SQLException e){ 
        //  e.printStackTrace();
            return con;
      }
      //catch (ClassNotFoundException e){
        //  e.printStackTrace();
      
      
    //}
}
