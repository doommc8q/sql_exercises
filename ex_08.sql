SELECT strftime('%Y', InvoiceDate) AS "Year", SUM(Total) AS TotalSum
FROM Invoice
WHERE InvoiceDate LIKE '2009%'
   OR InvoiceDate LIKE '2011%'
GROUP BY strftime('%Y', InvoiceDate);
