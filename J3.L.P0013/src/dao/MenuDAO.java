package dao;

import bean.Menu;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MenuDAO {
	public MenuDAO() {
    }
    
    public ArrayList<Menu> showAll(){
        ArrayList<Menu> result = new ArrayList<>();
        try(Connection con = CreateConnection.getConnect()){
            Statement stmt = con.createStatement();
            String query = "Select MenuID, MenuName, MenuDetail, Price from Menu";
            ResultSet re = stmt.executeQuery(query);
            while(re.next()){
                int menuID = re.getInt(1);
                String menuName = re.getString(2);
                String menuDetail = re.getString(3);
                double price = re.getDouble(4);
                result.add(new Menu(menuID, menuName, menuDetail, price));
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(MenuDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
    public static void main(String[] arg) {
    	System.out.print(new MenuDAO().showAll());
    }
}
