INSERT INTO customers (full_name , email , phone , register_date) 
VALUES ('Naoufal Rifinio' , 'rifinionaou267@gmail.com' , '0615791549' , CURDATE());

UPDATE customers SET phone = '0778155925' WHERE customer_id = 2;

SELECT * FROM customers;

SELECT full_name , email FROM customers;

SELECT * FROM accounts;

SELECT account_number FROM accounts;

SELECT * FROM transactions;

SELECT * FROM accounts WHERE balance > 10000;

SELECT * FROM accounts WHERE balance <= 0;

SELECT * FROM transactions WHERE transaction_type = 'debit';

SELECT * FROM transactions WHERE transaction_type = 'credit';

SELECT * FROM transactions WHERE accountid = 1;

SELECT customers.* FROM customers JOIN accounts ON customer_id = customerid WHERE advisorid = 2;

SELECT * FROM accounts WHERE account_type = 'Savings';

SELECT * FROM transactions WHERE amout >= 500;

SELECT * FROM transactions WHERE amout BETWEEN 100 AND 1000;

SELECT * FROM accounts WHERE customerid = 1;

SELECT * FROM accounts ORDER BY balance ASC;

SELECT * FROM accounts ORDER BY balance DESC;

SELECT * FROM transactions ORDER BY amout DESC LIMIT 5;

SELECT * FROM transactions ORDER BY transaction_date DESC;

SELECT * FROM transactions ORDER BY transaction_id DESC LIMIT 3;

SELECT a.account_id, a.account_number, a.balance , a.account_type , c.full_name AS customer_name  , ad.full_name AS advisor_name
6 accounts a JOIN customers c ON customerid = customer_id JOIN advisors ad ON advisorid = advisor_id;