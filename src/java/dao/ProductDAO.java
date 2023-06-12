/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Product;

/**
 *
 * @author truon
 */
public class ProductDAO {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    public ProductDAO (Connection con) {
        this.con = con;
    }
    public List<Product> getAllProducts() {
        List<Product> products =  new ArrayList<Product>();
        
        try {
            query = "select * from products";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {                
                Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setPrice(rs.getFloat("price"));
                row.setImage(rs.getString("image"));
                
                products.add(row);
            }
        } catch (SQLException e) {
        }
        
        return products;
    }
    
    public Product getProductById(int id) {
        Product p =  new Product();
        
        try {
            query = "select * from products where id ="+id;
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {                
                Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("image"));
                
                p = row;
            }
        } catch (SQLException e) {
        }
        
        return p;
    }
    
    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<Cart>();
        try {
            if(!cartList.isEmpty()) {
                for(Cart item:cartList) {
                    query = "select * from products where id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    while(rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getInt("Id"));
                        row.setName(rs.getString("name"));
                        row.setCategory(rs.getString("category"));
                        row.setPrice(rs.getDouble("price") * item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        
        return products;
    }
}
