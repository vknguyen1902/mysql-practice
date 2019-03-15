CREATE DATABASE Second_International_Bank;

CREATE TABLE Second_International_Bank.Customers (
	ID INT AUTO_INCREMENT NOT NULL,
    FirstName VARCHAR(150) NOT NULL,
    LastName VARCHAR(150) NOT NULL,
    Loan BOOLEAN DEFAULT false,
    Checking DECIMAL(65,2),
    Savings DECIMAL(65,2),
    PRIMARY KEY (ID)
);

INSERT INTO second_international_bank.customers (FirstName, LastName, Loan, Checking, Savings)
VALUES 
	("James", "Lee", true, 12000.45, 21000.23),
    ("Kim", "Brown", false, 4000.21, 10000.23),
    ("Linda", "June", true, 20000.32, 30000.23),
    ("Ricardo", "Adams", false, 34567.56, 3832324.52);

SELECT * FROM second_international_bank.customers;



