SELECT I.InvoiceId, T.Name
FROM InvoiceLine I
         INNER JOIN Track T on I.TrackId = T.TrackId
         GROUP BY T.Name;
         
