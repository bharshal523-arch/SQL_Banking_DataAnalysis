use BankingDB;

show tables;
select * from customers;
select * from transactions;
-- customer :- id,first name,trans_id,type,amount-- 

select c.CustomerID,c.FirstName,t.TransactionID,t.TransactionType,t.Amount
from customers c inner join transactions t
on c.CustomersID=t.CustomerID;

select * from transactions;

-- add column CustomerID into transactions--
-- customers-- transactions with foreign key 

alter table transactions add column CustomerID int;
alter table transactions
ADD FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID);

update transactions set CustomerID=101
where TransactionID in (310,302,305,309);

update transactions set CustomerID=102
where TransactionID in (303,304,310);

update transactions set CustomerID=106
where TransactionID in (306);

update transactions set CustomerID=107
where TransactionID in (307);

update transactions set CustomerID=108
where TransactionID in (308);

-- Inner join (equi join)
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionType,
    t.Amount
FROM Customers c
INNER JOIN Transactions t
    ON c.CustomerID = t.CustomerID
    Where TransactionType IN ('Deposit','Withdrawal');

-- Outer join (Left join) --

SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionType,
    t.Amount
FROM Customers c
LEFT JOIN Transactions t
    ON c.CustomerID = t.CustomerID;
    
    -- update 310 TransactionID with CustomerID= null so it will be displayed in right join-- 

update transactions set CustomerID=null where TransactionID=310;
  
-- 
  
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Customers c
INNER JOIN Transactions t
    ON c.CustomerID = t.CustomerID
WHERE t.TransactionType = 'Deposit'
  AND t.Amount > 10000
ORDER BY t.Amount DESC;



  















    
    







 
    
