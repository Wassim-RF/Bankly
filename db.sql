CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(32) UNIQUE,
    email VARCHAR(50),
    phone VARCHAR(10),
    register_date DATE
);

CREATE TABLE IF NOT EXISTS Advisors (
    advisor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(32) UNIQUE,
    email VARCHAR(50)
);