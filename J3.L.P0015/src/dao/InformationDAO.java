package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import bean.Information;

public class InformationDAO {
	public Information takeInfo() {
		Information result = null;
		try (Connection con=CreateConnection.getConnect()){
            Statement stmt= con.createStatement(); 
            ResultSet rs=stmt.executeQuery("Select Name, Image, Content, Phone, Address, Email from Information where Name='"+"About my Cakes"+"'"); 
            if(rs.next()){
            	String name = rs.getString(1);
            	String image = rs.getString(2);
            	String content = rs.getString(3);
            	String phone = rs.getString(4);
            	String address = rs.getString(5);
            	String email = rs.getString(6);
            	result = new Information(name, image, content, phone, address, email);
            }
            con.close();
            return result;
		}catch(Exception ex) {
			Logger.getLogger(PageCounterDAO.class.getName()).log(Level.SEVERE, null, ex);
            return result;
		}
	}
	
	public static void main(String[] arg) {
		System.out.print( new InformationDAO().takeInfo());
	}
}
