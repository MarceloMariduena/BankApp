USE bankapp;

INSERT INTO BANK_BRANCH 
(Branch_ID, Branch_Name, Assets, Liabilities, Zip_Code)
VALUES 
(1, 'Bank Of America', 1000000000, 1000000, 11234),
(2, 'Wells Fargo', 1000000000, 1000000, 11234),
(3, 'Bank of Uganda', 1000000000, 1000000, 11234),
(4, 'Bank of Switzerland', 1000000000, 1000000, 11234),
(5, 'Bank of The Planet Earth', 1000000000, 1000000, 11234),
(6, 'Bank of Imagination Land', 1000000000, 1000000, 11234),
(7, 'Bank of Banks', 1000000000, 1000000, 11234),
(8, 'Bank of Banks of Banks', 1000000000, 1000000, 11234),
(9, 'Bank of Nigeria', 1000000000, 1000000, 11234),
(10, 'Bank of Zimbabwe', 1000000000, 1000000, 11234);

INSERT INTO BANK_TELLERS
(Employee_ID, Employee_Name, Teller_Phone, Wage, Branch_ID)
VALUES
(1001, 'Tom Hanks', '867-5-309', 1000, 10),
(1002, 'Iron Man', '867-5-310', 1000, 9),
(1003, 'Captain America', '867-5-311', 1000, 8),
(1004, 'Hulk', '867-5-312', 1000, 7),
(1005, 'Jerry', '867-5-313', 1000, 6),
(1006, 'Rick Sanchez', '867-5-314', 1000, 5),
(1007, 'Thanos', '867-5-315', 1000, 4),
(1008, 'Sasha Grey', '867-5-316', 1000, 3),
(1009, 'Honey Badger', '867-5-317', 1000, 2),
(1010, 'Tom B. Erichsen', '867-5-318', 1000, 1);

INSERT INTO CUSTOMERS
(Customer_ID, Customer_Name, Teller_ID)
VALUES 
(101, 'Exodia', 1001),
(102, 'Marshmallow', 1002),
(103, 'Shakira', 1003),
(104, 'Shaquil O Neal', 1004),
(105, 'Coby', 1005),
(106, 'Tom Cruise', 1006),
(107, 'Brad Pitt', 1007),
(108, 'Bradley Cooper', 1008),
(109, 'Georgina Georginas', 1009),
(110, 'Tommy Lauren', 1010);

INSERT INTO BANK_ACCOUNT
(Account_Number, Balance, Overdraft_Fee, Customer_ID)
VALUES 
(101010, 20000, 35, 101),
(101020, 30000, 35, 102),
(101030, 50000, 35, 101),
(101040, 60000, 35, 103),
(101050, 70000, 35, 106),
(101060, 20000, 35, 107),
(101070, 90000, 35, 108),
(101080, 60000, 35, 109),
(101090, 40000, 35, 110),
(101100, 10000, 35, 104);

INSERT INTO LOANS
(Loan_ID, Loan_Amount, Interest_Rate, Date_Of_Loan, Account_Number)
VALUES 
(9001, 1000, 0.08, '2008-11-11', 101010),
(9002, 1000, 0.2, '2008-11-11', 101010),
(9003, 1000, 0.14, '2008-11-11', 101010),
(9004, 1000, 0.12, '2008-11-11', 101010),
(9005, 1000, 0.10, '2008-11-11', 101010),
(9006, 1000, 0.04, '2008-11-11', 101010),
(9007, 1000, 0.07, '2008-11-11', 101010),
(9008, 1000, 0.12, '2008-11-11', 101010),
(9009, 1000, 0.11, '2008-11-11', 101010),
(9010, 1000, 0.09, '2008-11-11', 101010);