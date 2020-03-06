package dao;

import static dao.DatabaseInfo.dbURL;
import static dao.DatabaseInfo.driverName;
import static dao.DatabaseInfo.passDB;
import static dao.DatabaseInfo.userDB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CreateConnection {
	public static Connection getConnect(){
        Connection conn = null;
		try {
                    Class.forName(driverName);
                    conn = DriverManager.getConnection(dbURL,userDB,passDB); // error is here 
		} catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
		}
		return conn;
    }
    
    public static void main(String[] arg){
        System.out.println(getConnect());
    }
}
