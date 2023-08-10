
-- Basic SELECT statement to display both the table
SELECT InvoiceDate,MAX(Quantity) 
FROM onlinedataretail odr
INNER JOIN customernames cn
ON odr.CustomerID=cn.CustomerID

-- Which of the items are the most purchased one?

SELECT Description, SUM(Quantity) AS TotalPurchased
FROM onlinedataretail odr
INNER JOIN customernames cn
ON odr.CustomerID=cn.CustomerID
GROUP BY StockCode, Description
ORDER BY TotalPurchased DESC
LIMIT 1;

-- Script to create View Table
CREATE VIEW OrderSummary AS
SELECT *
FROM
    onlinedataretail odr
JOIN
    customernames cn
    ON odr.CustomerID = cn.CustomerID;
