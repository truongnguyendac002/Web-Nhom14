/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author truon
 */
import java.util.Date;

public class Comment {

    private int productId;
    private int userId;
    private String detail;
   

    public Comment(int productId, int userId, String detail) {
       
        this.productId = productId;
        this.userId = userId;
        this.detail = detail;
    }

    public Comment() {
        
    }

    

   

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    

}