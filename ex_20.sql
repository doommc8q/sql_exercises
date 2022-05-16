SELECT Sum(I.Total) as MaxTotalSum, e.FirstName || ' ' || e.LastName AS SalesAgent
FROM Invoice I
         INNER JOIN Customer c ON i.CustomerId = c.CustomerId
         INNER JOIN Employee E on c.SupportRepId = E.EmployeeId
WHERE Title like '%sales%'
   or '%agent%'
GROUP BY e.FirstName
ORDER BY Sum(I.Total) DESC
LIMIT 1;
