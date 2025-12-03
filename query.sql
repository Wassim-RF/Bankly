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