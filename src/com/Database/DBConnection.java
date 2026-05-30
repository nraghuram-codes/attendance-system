package com.Database;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class DBConnection {
	private static  Connection con;
	public static Connection con(){
		try{
			 
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collegesystem","root","root");
			
			System.out.println("connection of db");
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}}
