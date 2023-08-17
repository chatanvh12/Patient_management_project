package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;

public class ConnectionProvider  {
      public static Connection register() {
    	  Connection con=null;
          try {
        	  Class.forName("oracle.jdbc.OracleDriver");
        	  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
        	  System.out.println("connection to DB: "+con);
          }catch(Exception e) {
        	  System.out.println(e);
          }
    	  
    	  return con;  
      }
}
