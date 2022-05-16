SELECT strftime('%Y', InvoiceDate) AS "Year", SUM(Total) AS TotalSum
FROM Invoice
WHERE strftime('%Y', InvoiceDate) >= '2009'
  AND strftime('%Y', InvoiceDate) <= '2011'
GROUP BY strftime('%Y', InvoiceDate);
