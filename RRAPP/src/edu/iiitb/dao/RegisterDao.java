package edu.iiitb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.iiitb.dbUtil.ConnectionPool;
import edu.iiitb.model.RegisterModel;

public class RegisterDao {
public String insert(RegisterModel model){
	int status;
	Connection con=ConnectionPool.getConnection();
	PreparedStatement preStmt=null;
	String query;
	try
	{
		query="insert into Login (`username`,`password`) values('"+model.getUserName()+"', '"+model.getPassword()+"')";
		preStmt=con.prepareStatement(query);
		System.out.println(query);
		status= preStmt.executeUpdate();
		if(status!=0)
		{
			System.out.println("insertted check in db");
			return "success";
			
		}
		else
		{
		
			return "failure";
		}
}
 catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	return "failure";
}
		
	}

public String insertFavourite(RegisterModel model) {
	
	int status;
	Connection con=ConnectionPool.getConnection();
	PreparedStatement preStmt=null;
	String query;
	try
	{
		System.out.println(model.getUserName());
		System.out.println(model.getResult());
		query="insert into favourite(`userName`,`favourites`) values('"+model.getUserName()+"', '"+model.getResult()+"')";
		preStmt=con.prepareStatement(query);
		System.out.println(query);
		status= preStmt.executeUpdate();
		if(status!=0)
		{
			System.out.println("insertted check in db");
			return "success";
			
		}
		else
		{
		
			return "failure";
		}
}
 catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	return "success";
}
	
}
}
