SELECT i.InvoiceId,
       c.FirstName || ' ' || c.LastName AS FullName
FROM Employee e
         INNER JOIN Customer c ON e.EmployeeId = c.SupportRepId
         INNER JOIN Invoice i on c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent';
