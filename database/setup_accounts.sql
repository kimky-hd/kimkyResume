CREATE TABLE IF NOT EXISTS accounts (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    role INT DEFAULT 1 CHECK (role IN (0, 1)) -- 0: Admin, 1: User
);

-- Insert default admin (Password: admin123)
-- Using plaintext for simplicity as requested, but in production use hashing!
INSERT INTO accounts (username, password, role) 
VALUES ('admin', 'admin123', 0)
ON DUPLICATE KEY UPDATE role = 0;
