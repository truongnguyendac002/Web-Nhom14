/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author truon
 */
public class User {
//id INT IDENTITY(1,1) PRIMARY KEY,
//    name VARCHAR(250) NOT NULL,
//    username VARCHAR(250) NOT NULL,
//    password VARCHAR(250) NOT NULL,
//    CONSTRAINT UC_username UNIQUE (username)    
    
    private int id;
    private String name, username, password, phone;

    public User() {
    }
    public static String hashPassword(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        byte[] hashedBytes = md.digest(password.getBytes());
        
        StringBuilder sb = new StringBuilder();
        for (byte b : hashedBytes) {
            sb.append(String.format("%02x", b));
        }
        
        return sb.toString();
    }
    
    public User(String username, String name, String password, String phone) {
        this.name = name;
        this.username = username;
        this.password = password;
        this.phone = phone;

        
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return username;
    }

    public void setEmail(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
