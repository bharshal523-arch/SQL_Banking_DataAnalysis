Use BankingDB;
Show tables;

select * from accounts;

SELECT SUM(Balance) as total_balance
FROM Accounts;

SELECT AVG(Balance) AS average_balance
FROM Accounts;

SELECT MAX(Balance) AS highest_balance
FROM Accounts;

SELECT MIN(Balance) AS lowest_balance
FROM Accounts;

SELECT COUNT(*) AS total_accounts
FROM Accounts;

-- Group BY

SELECT 
    AccountType,
    SUM(Balance) AS TotalBalance
FROM Accounts
GROUP BY AccountType order by AccountType asc;

SELECT 
    AccountType,
    SUM(Balance) AS TotalBalance
FROM Accounts
GROUP BY AccountType
HAVING SUM(Balance) > 25000;










