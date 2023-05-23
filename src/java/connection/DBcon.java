/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author truon
 */
public class DBcon {

    private static Connection connection = null;

    public static Connection getConnection() throws ClassNotFoundException {
        if (connection == null) {
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName = Clothes_Web;"  ;
                String username = "sa";
                String password = "nhom2";
                
                connection =  DriverManager.getConnection(connectionUrl,username, password);
            } catch (SQLException ex) {
                System.out.println(ex);
            }

        }
        return connection;
    }
}
