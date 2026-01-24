package org.example.dao;

import org.example.context.DBContext;
import org.example.model.Contact;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContactDAO {
    public void addContact(Contact contact) throws SQLException {
        String query = "INSERT INTO contacts (name, email, message) VALUES (?, ?, ?)";
        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, contact.getName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getMessage());
            ps.executeUpdate();
        }
    }
}
