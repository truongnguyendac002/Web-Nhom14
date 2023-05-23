/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import connection.DBcon;
import model.Comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truon
 */
public class CommentDAO {

    private final Connection connection;

    public CommentDAO(Connection connection) {
        this.connection = connection;
    }

    public void addComment(Comment comment) {
        try {
            String query = "INSERT INTO comments (p_id, u_id, detail) VALUES (?, ?, ?)";
            try ( PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, comment.getProductId());
                preparedStatement.setInt(2, comment.getUserId());
                preparedStatement.setString(3, comment.getDetail());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
        }
    }

    public List<Comment> getCommentsByProduct(int productId) {
        List<Comment> comments = new ArrayList<>();
        try {
            String query = "SELECT * FROM comments WHERE p_id = ?";
            try ( PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, productId);
                try ( ResultSet resultSet = preparedStatement.executeQuery()) {
                    while (resultSet.next()) {
                     
                        int userId = resultSet.getInt("u_id");
                        String detail = resultSet.getString("detail");
                        Comment comment = new Comment(productId, userId, detail);
                        comments.add(comment);
                    }
                }
            }
        } catch (SQLException e) {
        }
        return comments;
    }

}
