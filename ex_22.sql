SELECT BillingCountry, Sum(Total) AS TotalSum
FROM Invoice I
GROUP BY BillingCountry
ORDER BY Sum(Total) DESC;
