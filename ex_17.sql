SELECT sum(I.Total) AS TotalSum, e.FirstName || ' ' || e.LastName AS FullName
FROM Invoice I
JOIN Customer c ON I.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId;
