package bean;

public class Menu {
	private int menuID;
    private String menuName;
    private String menuDetail ;
    private double price;

    public Menu() {
    }

    public Menu(int menuID, String menuName, String menuDetail, double price) {
        this.menuID = menuID;
        this.menuName = menuName;
        this.menuDetail = menuDetail;
        this.price = price;
    }

    public int getMenuID() {
        return menuID;
    }

    public void setMenuID(int menuID) {
        this.menuID = menuID;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuDetail() {
        return menuDetail;
    }

    public void setMenuDetail(String menuDetail) {
        this.menuDetail = menuDetail;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Menu{" + "menuID=" + menuID + ", menuName=" + menuName + ", menuDetail=" + menuDetail + ", price=" + price + '}';
    }
}
