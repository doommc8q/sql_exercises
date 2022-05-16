SELECT count(C.CustomerID) as count, e.FirstName || ' ' || e.LastName AS SalesAgent
FROM Customer c
         INNER JOIN Employee E on c.SupportRepId = E.EmployeeId
WHERE e.Title like '%sales%'
   or '%agent%'
GROUP BY e.FirstName;
