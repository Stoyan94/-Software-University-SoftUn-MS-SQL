
CREATE TABLE Transactions (
    TransactionID INT,
    Amount DECIMAL(10, 2)
);

INSERT INTO Transactions (TransactionID, Amount) VALUES
(1, 100.50),
(2, -50.75),
(3, 75.25),
(4, -120.00);

SELECT 
    TransactionID,
    Amount,
    ABS(Amount) AS AbsoluteAmount
FROM 
    Transactions



-- TransactionID   Amount      AbsoluteAmount
-- -----------------------------------------
-- 1               100.50      100.50
-- 2               -50.75      50.75
-- 3               75.25       75.25
-- 4               -120.00     120.00