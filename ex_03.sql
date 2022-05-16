SELECT c.FirstName || ' ' || c.LastName as FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c
         INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE c.country = 'Brazil';
