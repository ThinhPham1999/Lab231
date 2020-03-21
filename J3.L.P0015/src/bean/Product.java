package bean;

public class Product {
	private int productID;
	private String productName;
	private String productDate;
	private String productImage;
	private String productContent;
	private double productPrice;
	
	public Product() {
		super();
	}

	public Product(int productID, String productName, String productDate, String productImage, String productContent,
			double productPrice) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.productDate = productDate;
		this.productImage = productImage;
		this.productContent = productContent;
		this.productPrice = productPrice;
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

	public String getProductDate() {
		return productDate;
	}

	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getProductContent() {
		return productContent;
	}

	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	@Override
	public String toString() {
		return "Product [productID=" + productID + ", productName=" + productName + ", productDate=" + productDate
				+ ", productImage=" + productImage + ", productContent=" + productContent + ", productPrice="
				+ productPrice + "]";
	}
	
}
