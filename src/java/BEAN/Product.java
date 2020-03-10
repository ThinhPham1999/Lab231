/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEAN;


/**
 *
 * @author Vann
 */
public class Product {
    private String ProductID;
    private String ProductName;
    private String ProductPhoto;
    private String ProductContent;
    private double ProductPrice;
    private String ProductDate;

    public Product() {
    }

    public Product(String ProductID, String ProductName, String ProductPhoto, String ProductContent, double ProductPrice, String ProductDate) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.ProductPhoto = ProductPhoto;
        this.ProductContent = ProductContent;
        this.ProductPrice = ProductPrice;
        this.ProductDate = ProductDate;
    }

    public String getProductID() {
        return ProductID;
    }

    public void setProductID(String ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public String getProductPhoto() {
        return ProductPhoto;
    }

    public void setProductPhoto(String ProductPhoto) {
        this.ProductPhoto = ProductPhoto;
    }

    public String getProductContent() {
        return ProductContent;
    }

    public void setProductContent(String ProductContent) {
        this.ProductContent = ProductContent;
    }

    public double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(double ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    public String getProductDate() {
        return ProductDate;
    }

    public void setProductDate(String ProductDate) {
        this.ProductDate = ProductDate;
    }

    @Override
    public String toString() {
        return "Product{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", ProductPhoto=" + ProductPhoto + ", ProductContent=" + ProductContent + ", ProductPrice=" + ProductPrice + ", ProductDate=" + ProductDate + '}';
    }
    
    
}
