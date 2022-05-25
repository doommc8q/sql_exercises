SELECT Sum(I.Total) as MaxTotalSum, e.FirstName || ' ' || e.LastName AS SalesAgent
FROM Invoice I
         INNER JOIN Customer c ON i.CustomerId = c.CustomerId
         INNER JOIN Employee E on c.SupportRepId = E.EmployeeId
GROUP BY c.SupportRepId
ORDER BY Sum(I.Total) DESC
LIMIT 1;
