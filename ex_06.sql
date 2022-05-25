SELECT i.InvoiceId,
       e.FirstName || ' ' || e.LastName AS FullName
FROM Invoice i
         INNER JOIN Customer c ON c.CustomerId = i.CustomerId
         INNER JOIN Employee e on c.CustomerId = e.EmployeeId
WHERE e.Title LIKE '%sales%'AND e.Title LIKE '%agent%';
