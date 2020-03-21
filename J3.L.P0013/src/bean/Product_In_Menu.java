package bean;

public class Product_In_Menu {
	private int menuID;
    private int productID;

    public Product_In_Menu(int menuID, int productID) {
        this.menuID = menuID;
        this.productID = productID;
    }

    public int getMenuID() {
        return menuID;
    }

    public void setMenuID(int menuID) {
        this.menuID = menuID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    @Override
    public String toString() {
        return "Product_In_Menu{" + "menuID=" + menuID + ", productID=" + productID + '}';
    }
}
