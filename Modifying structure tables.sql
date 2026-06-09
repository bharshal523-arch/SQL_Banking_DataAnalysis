Use BankingDB;
Show tables;
ALTER TABLE Customers
ADD DateOfBirth DATE;
describe customers;

ALTER TABLE Customers
MODIFY Phone VARCHAR(20);

ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

