SELECT T.Name, count(IL.Quantity) as SalesCount
FROM InvoiceLine IL
JOIN Track T ON IL.TrackId = T.TrackId
GROUP BY T.Name
ORDER BY SalesCount DESC
LIMIT 5;
