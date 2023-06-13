/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author truon
 */
public class UserDAO {

    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public UserDAO(Connection con) {
        this.con = con;
    }

    public User userLogin(String username, String password) {
        User user = null;
        try {
            query = "select * from users where username = ? and password = ?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("username"));

            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return user;
    }

    public void addUser(User user) throws SQLException {
        if (isEmailExists(user.getEmail())) {
            return;
        }

        try {
            query = "INSERT INTO users (name, username, password, phone) VALUES (?, ?, ?, ?)";

            pst = this.con.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getPassword());
            pst.setString(4, user.getPhone());
            rs = pst.executeQuery();
        } catch (SQLException e) {
        }
    }

    public boolean isEmailExists(String username) throws SQLException {
        query = "SELECT COUNT(*) FROM users WHERE username = ?";
        try {
            pst = this.con.prepareStatement(query);

            pst.setString(1, username);

            rs = pst.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }
        } catch (SQLException e) {
        }
        
        return false;

    }

    public User getUserById(int id) {
        User u = new User();

        try {
            query = "select * from users where id =" + id;
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                User row = new User();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setEmail(rs.getString("username"));
                row.setPhone(rs.getString("phone"));

                u = row;
            }
        } catch (SQLException e) {
        }

        return u;
    }

}
