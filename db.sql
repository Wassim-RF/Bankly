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

CREATE TABLE IF NOT EXISTS Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    amout DECIMAL(12,2),
    transaction_type ENUM('debit', 'credit'),
    transaction_date DATE,
    accountid INT,
    FOREIGN KEY (accountid) REFERENCES Accounts(account_id)
);

INSERT INTO customers (full_name , email , phone , register_date) 
VALUES ('Wassim Rifi' , 'wassimrifi1303@gmail.com' , '0651909718' , CURDATE());

INSERT INTO customers (full_name , email , phone , register_date) 
VALUES ('Mouad Abbadi' , 'mouadaa123@gmail.com' , '0770736599' , CURDATE());

INSERT INTO customers (full_name , email , phone , register_date) 
VALUES ('Saad Shimi' , 'shimi098saad@gmail.com' , '0668958420' , CURDATE());

INSERT INTO customers (full_name , email , phone , register_date) 
VALUES ('Monsif Howari' , 'monsifmonsif736@gmail.com' , '0785943278' , CURDATE());

INSERT INTO customers (full_name , email , phone , register_date) 
VALUES ('Hakim Allouani' , 'hallouiani012@gmail.com' , '0688654895' , CURDATE());

INSERT INTO customers (full_name , email , phone , register_date) 
VALUES ('Saad Yazidi' , 'yazidisaa09@gmail.com' , '0658789501' , CURDATE());