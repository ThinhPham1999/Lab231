package dao;

import bean.Product_In_Menu;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Product_In_MenuDAO {
	public ArrayList<Product_In_Menu> showAll(){
        ArrayList<Product_In_Menu> result = new ArrayList<>();
        try(Connection con = CreateConnection.getConnect()){
            Statement stmt = con.createStatement();
            String query = "Select productID, MenuID from Product_In_Menu";
            ResultSet re = stmt.executeQuery(query);
            while(re.next()){
                int productID = re.getInt(1);
                int menuID = re.getInt(2);
                result.add(new Product_In_Menu(menuID, productID));
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Product_In_MenuDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
    public static void main(String[] arg){
        System.out.println(new Product_In_MenuDAO().showAll());
    }
}
