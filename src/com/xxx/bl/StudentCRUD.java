package com.xxx.bl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.xxx.model.Student;

public class StudentCRUD {
	
	public boolean addstudent (Student C) throws SQLException, ClassNotFoundException
	{
		Class.forName("org.h2.Driver");
		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "sa");
		PreparedStatement ps=con.prepareStatement("insert into student (Sname, Semail, Susername, Spassword) values (?,?,?,?)");
		ps.setString(1, C.getSname());
		ps.setString(2, C.getSemail());
		ps.setString(3, C.getSusername());
		ps.setString(4, C.getSpassword());
		
		if(ps.executeUpdate()!=0)
		return true;
		else
		return false;
	}
	public ArrayList<Student> SelectAllStudent() throws ClassNotFoundException, SQLException {
	Class.forName("org.h2.Driver");
	Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "sa");
	Statement s= con.createStatement();
	ResultSet rs=s.executeQuery("Select * from Student");
	System.out.println(rs);
	ArrayList<Student> studentlist =new ArrayList<>();
	while (rs.next())
	{
		Student c=new Student ();
		c.setSname(rs.getString(1));
		c.setSemail(rs.getString(2));
		c.setSusername(rs.getString(3));
		studentlist.add(c);
		System.out.println(studentlist);
	}
	return studentlist;
}
}
