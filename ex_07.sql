SELECT i.Total,
       c.FirstName || ' ' || c.LastName AS ClientFullName,
       i.BillingCountry,
       e.FirstName || ' ' || e.LastName AS SalerFullName
FROM Invoice i
         INNER JOIN Customer C on i.CustomerId = C.CustomerId
         INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE title LIKE '%sales%'
   OR '%agent%';
