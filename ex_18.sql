SELECT Sum(I.Total) TotalSumIn2009, e.FirstName || ' ' || e.LastName AS SalesAgent
FROM Invoice I
         INNER JOIN Customer c ON i.CustomerId = c.CustomerId
         INNER JOIN Employee E on c.SupportRepId = E.EmployeeId
WHERE strftime('%Y',InvoiceDate)='2009' and Title like '%sales%'
   or '%agent%'
GROUP BY e.FirstName
ORDER BY Sum(I.Total) DESC
LIMIT 1;
