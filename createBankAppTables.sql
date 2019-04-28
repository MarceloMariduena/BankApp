CREATE DATABASE bankapp;
USE bankapp;

-- Bank Branch
CREATE TABLE BANK_BRANCH (
  Branch_ID INT NOT NULL,
  Branch_Name VARCHAR(255) NULL,
  Assets DOUBLE NULL,
  Liabilities DOUBLE NULL,
  Zip_Code INT NOT NULL,
  PRIMARY KEY (Branch_ID)
);

-- Tellers
CREATE TABLE BANK_TELLERS (
  Employee_ID INT NOT NULL,
  Employee_Name VARCHAR(255) NOT NULL,
  Teller_Phone VARCHAR(255) NOT NULL,
  Wage DOUBLE NULL,
  Branch_ID INT NOT NULL,
  PRIMARY KEY (Employee_ID),
  CONSTRAINT FK_Bank_Branch
    FOREIGN KEY (Branch_ID)
    REFERENCES BANK_BRANCH(Branch_ID)
);

-- Customers
CREATE TABLE CUSTOMERS (
  Customer_ID INT NOT NULL,
  Customer_Name VARCHAR(100) NULL,
  Teller_ID INT NOT NULL,
  PRIMARY KEY (Customer_ID),
  CONSTRAINT FK_Employee_ID
    FOREIGN KEY (Teller_ID)
    REFERENCES BANK_TELLERS(Employee_ID)
);

-- Bank Accounts
CREATE TABLE BANK_ACCOUNT (
  Account_Number INT NOT NULL,
  Balance DOUBLE NULL,
  Overdraft_Fee DOUBLE NULL,
  Customer_ID INT NOT NULL,
  PRIMARY KEY (Account_Number),
  CONSTRAINT FK_Bank_Customer
    FOREIGN KEY (Customer_ID)
    REFERENCES CUSTOMERS(Customer_ID)
);


-- Loans
CREATE TABLE LOANS (
  Loan_ID INT NOT NULL,
  Loan_Amount DOUBLE NULL,
  Interest_Rate DOUBLE NULL,
  Date_Of_Loan DATE NULL,
  Account_Number INT NOT NULL,
  PRIMARY KEY (Loan_ID),
  CONSTRAINT FK_Account_Number
    FOREIGN KEY (Account_Number)
    REFERENCES BANK_ACCOUNT(Account_Number)
);
