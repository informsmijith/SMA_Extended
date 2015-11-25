package com.sma_x.common;

/*
************************************************************
* Project Name			: Golfie
* Version			    : 1.0
* Module Name			: Settings
* Class name			: 
* Purpose of the class  :To register the player details
* Relationships with other 
* classes				: 
* 							    
* Coded by				: Ancy Mathew
* Creation date			: 
*
* Last Updation date	: 
*
* Honor Code: I pledge that this program represents my own
*   program code. I received help from - Smijith K
*   in designing and debugging my program.
*
* Copyright @ 2015-2016 
* All Rights Reserved.
*  --------------------------------------------------------
* |-----------SummerSoft Private Limited ------------------| 
*  --------------------------------------------------------
*   B9,9th Floor,Heavenly Plaza,Vazhakala,Kakanad-682021
************************************************************
*/
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbconnection {
	
	public Connection con=null;
	Statement stmt = null;
	ResultSet rs =null;
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:3306/sma_x_1.2";
	static final String USER = "root";
	static final String PASS = "root";
	/**
	    *Database connectivity
	    * @return
	    */
	public Dbconnection()
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(DB_URL,USER,PASS);
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	    *close the database connection
	    * @return
	    */
	public void close()
	{
		try
		{
		
		con.close();
		}
		catch (SQLException e) {
			
			e.printStackTrace();
		} 
	}
	/**
	    *result set function
	    * @return result set
	    */
	public ResultSet select(String str){		
			try {
				stmt = con.createStatement();  	     
				  rs= stmt.executeQuery(str);
				
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return rs;
	}
	/**
	    *Insertion,deletion, updation of database
	    * @return integer
	    */
	public int idu(String query){
		
		try {
			Statement st=con.createStatement();
			int i=st.executeUpdate(query);
			return i;
		 }  catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}	
		
	}
	
}
