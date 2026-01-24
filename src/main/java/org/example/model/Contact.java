package org.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Contact {
    private int id;
    private String name;
    private String email;
    private String message;
    private Timestamp createdAt;

    public Contact(String name, String email, String message) {
        this.name = name;
        this.email = email;
        this.message = message;
    }
}
