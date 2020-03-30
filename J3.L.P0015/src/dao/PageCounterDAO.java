package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class PageCounterDAO {
	public int takePage() {
		int result = 0;
		try (Connection con=CreateConnection.getConnect()){
            Statement stmt= con.createStatement(); 
            ResultSet rs=stmt.executeQuery("Select hit from PageCounter"); 
            if(rs.next()){
            	result = rs.getInt(1);
            }
            con.close();
            return result;
		}catch(Exception ex) {
			Logger.getLogger(PageCounterDAO.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
		}
	}
	
	public boolean editPageCounter(int counter) {
		try (Connection con=CreateConnection.getConnect()){
            PreparedStatement stmt= con.prepareStatement("Update PageCounter set hit=?"); // Should use
            stmt.setInt(1, counter);
            stmt.executeUpdate();
            con.close();
            return true;
        }
        catch(Exception e){
        	Logger.getLogger(PageCounterDAO.class.getName()).log(Level.SEVERE, null, e);
        	return false;
        }   
	}
	
	public static void main(String[] arg) {
		System.out.print(new PageCounterDAO().editPageCounter(4));
		System.out.print(new PageCounterDAO().takePage());
	}
}
