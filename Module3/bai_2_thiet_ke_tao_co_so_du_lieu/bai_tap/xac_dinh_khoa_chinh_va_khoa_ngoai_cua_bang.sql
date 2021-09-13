CREATE DATABASE bank_account;
CREATE TABLE customers (
	customer_number int NOT NULL AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    address VARCHAR(100),
    email VARCHAR(100),
    phone INT,
    PRIMARY KEY (customer_number)
);
CREATE TABLE accounts (
	account_number INT NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    first_date DATE NOT NULL,
	balance INT NOT NULL,
	customer_number int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (account_number),
    FOREIGN KEY(customer_number) REFERENCES customers(customer_number)
);
CREATE TABLE transactions (
	tran_number INT NOT NULL AUTO_INCREMENT,
    account_number INT NOT NULL,
    tran_date DATE,
    amounts FLOAT NOT NULL,
    descriptions TEXT,
    PRIMARY KEY (tran_number),
    FOREIGN KEY (account_number) REFERENCES accounts(account_number)
);
    