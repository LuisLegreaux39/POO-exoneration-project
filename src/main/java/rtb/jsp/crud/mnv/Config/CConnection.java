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
              Class.forName("com.mysql.cj.jdbc.Driver");
              String mysqlHost = System.getenv("DATABASE_MYSQL_HOST");
              System.out.println(mysqlHost);
              con = DriverManager.getConnection("jdbc:mysql://" + mysqlHost,"user","password");
          }catch(Exception e){
              System.err.println("Error on " + e);
          
          }
      }
      public Connection getConnetion(){
          return this.con;
      }
}
