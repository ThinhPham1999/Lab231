package bean;

public class Product {
	private int productID;
    private String productName;
    private String ProductPicture;
    private String productContent;

    public Product() {
    }

    public Product(int productID, String productName, String ProductPicture, String productContent) {
        this.productID = productID;
        this.productName = productName;
        this.ProductPicture  = ProductPicture ;
        this.productContent = productContent;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return ProductPicture;
    }

    public void setProductImage(String ProductPicture) {
        this.ProductPicture  = ProductPicture;
    }

    public String getProductContent() {
        return productContent;
    }

    public void setProductContent(String productContent) {
        this.productContent = productContent;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", productImage=" + ProductPicture + ", productContent=" + productContent + '}';
    }
}
