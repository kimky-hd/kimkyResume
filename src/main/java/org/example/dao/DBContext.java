package org.example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

    public static Connection getConnection() throws SQLException {
        // 1. Thử lấy thông tin từ Biến môi trường (Dành cho Render/Cloud)
        String url = System.getenv("jdbc:mysql://mysql-37d9fa06-kimkyresume.h.aivencloud.com:26236/defaultdb?ssl-mode=REQUIRED");
        String user = System.getenv("avnadmin");
        String pass = System.getenv("AVNS_mkjQBkSG-PoBr6FfNE5");

        // 2. Nếu không có biến môi trường (Chạy ở Local), sử dụng cấu hình mặc định
        if (url == null || url.isEmpty()) {
            // Cấu hình cho Localhost của bạn
            url = "jdbc:mysql://localhost:3306/resume_db";
            user = "root";
            pass = "1234"; // Mật khẩu máy cá nhân của bạn
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL Driver not found!", e);
        }
    }

    // Test kết nối nhanh
    public static void main(String[] args) {
        try {
            Connection conn = getConnection();
            if (conn != null) {
                System.out.println("--- KẾT NỐI THÀNH CÔNG ---");
                System.out.println("Đang kết nối tới: " + conn.getMetaData().getURL());
                conn.close();
            }
        } catch (Exception e) {
            System.err.println("--- KẾT NỐI THẤT BẠI ---");
            e.printStackTrace();
        }
    }
}