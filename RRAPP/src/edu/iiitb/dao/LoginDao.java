package edu.iiitb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.iiitb.dbUtil.ConnectionPool;
import edu.iiitb.model.LoginModel;

public class LoginDao {

	public String Retrieve(LoginModel model)
	{
		Connection con=ConnectionPool.getConnection();
		PreparedStatement preStmt=null;
		String query;
		try
		{
				query="select * from Login where username='"+model.getUserName()+"'and password = '"+model.getPassword()+"'";
				preStmt=con.prepareStatement(query);
				System.out.println(query);
				ResultSet rs = preStmt.executeQuery();
				if(rs.next())
				{
					model.setUserName(rs.getString(2));
					System.out.println(model.getUserName());
					System.out.println("i m in success");
					return "success";
					
				}
				else
				{
					System.out.println("i m in failure");
					return "failure";
				}
		}
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "failure";
		}
		
	}
}
