/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.Config;

import java.sql.*;


/**
 *
 * @author PC
 */
public class CConnection {
      Connection con;
      public CConnection(){
          try{
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://poo-exoneration-project-db-1:3306/db","user","password");
          }catch(Exception e){
              System.err.println("Error on " + e);
          
          }
      }
      public Connection getConnetion(){
          return this.con;
      }
}
