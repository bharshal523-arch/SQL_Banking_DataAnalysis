Use BankingDB;
show tables;


INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20');

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES(103, 'Rahul', 'Patil', 'rahul@gmail.com', '9988745655', '2026-03-05', '2000-09-20');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES(201, 101, 'Savings', 25000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES(202, 102, 'Current', 40000);

select * from Customers;  
select * from Accounts;