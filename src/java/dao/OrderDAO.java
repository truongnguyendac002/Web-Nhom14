/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.*;

/**
 *
 * @author Asus
 */
public class OrderDAO {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public OrderDAO(Connection con) {
        this.con = con;
    }
    
    public boolean insertOrder(Order model) {
        boolean result = false;
        
        try {
            query = "insert into orders (p_id, u_id, o_quantity, o_date) values(?, ?, ?, ?)";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, model.getId());
            pst.setInt(2, model.getuid());
            pst.setInt(3, model.getQuantity());
            pst.setString(4, model.getDate());
            pst.executeUpdate();
            result = true;
                    
        } catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
