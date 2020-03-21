package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.Logger;


import bean.Product;

public class ProductDAO {
	
	public ArrayList<Product> showAll(){
        ArrayList<Product> result = new ArrayList<>();
        try(Connection con = CreateConnection.getConnect()){
            Statement stmt = con.createStatement();
            String query = "Select productID, productName, ProductDate, ProductImage, productContent, ProductPrice from Product";
            ResultSet re = stmt.executeQuery(query);
            while(re.next()){
                int productID = re.getInt(1);
                String productName = re.getString(2);
                String productDate = re.getString(3).toString();
                String productImage = re.getString(4);
                String productContent = re.getString(5);
                double productPrice = re.getDouble(6);
                result.add(new Product(productID, productName, productDate, productImage, productContent, productPrice));
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        Comparator<Product> compareByDate = (Product o1, Product o2) -> o1.getProductDate().compareTo( o2.getProductDate());
        Collections.sort(result, compareByDate.reversed());
        return result;
    }
	
	public Product product(int id) {
		Product pro = null;
		try (Connection con=CreateConnection.getConnect()){
            
            Statement stmt= con.createStatement(); 
            ResultSet rs=stmt.executeQuery("Select productID, productName, ProductDate, ProductImage, productContent, ProductPrice from Product where ProductID='"+id+"'"); 
            if(rs.next()){
            	int productID = id;
            	String productName = rs.getString(2);
                String productDate = rs.getString(3).toString();
                String productImage = rs.getString(4);
                String productContent = rs.getString(5);
                double productPrice = rs.getDouble(6);
                pro = new Product(productID, productName, productDate, productImage, productContent, productPrice);
            }
            con.close();
            return pro;
		}catch(Exception ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
		}
	}
	
	public ArrayList<Product> lastList(){
		ArrayList<Product> result = new ArrayList<>();
		ArrayList<Product> listAll = new ProductDAO().showAll();
		result.add(listAll.get(0));
		result.add(listAll.get(1));
		return result;
	}
	
	public static void main(String[] arg) {
		System.out.print(new ProductDAO().showAll());
	}
}
