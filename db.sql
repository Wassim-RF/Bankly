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

CREATE TABLE IF NOT EXISTS Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    account_number VARCHAR(14) UNIQUE,
    balance DECIMAL(12,2),
    account_type ENUM('Checking', 'Savings', 'Business'),
    customerid INT,
    advisorid INT,
    FOREIGN KEY (customerid) REFERENCES Customers(customer_id),
    FOREIGN KEY (advisorid) REFERENCES Advisors(advisor_id)
);