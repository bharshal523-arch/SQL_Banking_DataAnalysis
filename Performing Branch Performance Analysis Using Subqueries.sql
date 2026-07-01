Show databases;

Use BankingDB;

-- Identify Accounts with Above-Average Balance--

SELECT *FROM Transactions
WHERE Amount > (SELECT AVG(Amount) FROM Transactions);

SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance >
(
    SELECT AVG(Balance)
    FROM Accounts
)
ORDER BY Balance DESC;

-- Identify Deposit Accounts Using a Multi-Row --

SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE AccountID IN
(
    SELECT AccountID
    FROM Transactions
    WHERE TransactionType = 'Deposit'
);

-- Identify the Account with the Highest Balance--

SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance =
(
    SELECT MAX(Balance)
    FROM Accounts
);

