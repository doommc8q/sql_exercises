SELECT T.Name, count(IL.Quantity) as SalesCount
FROM InvoiceLine IL
         INNER JOIN Track T ON IL.TrackId = T.TrackId
         INNER JOIN Invoice I on IL.InvoiceId = I.InvoiceId
WHERE strftime('%Y', I.InvoiceDate) = '2013'
GROUP BY T.TrackId
ORDER BY SalesCount DESC;
