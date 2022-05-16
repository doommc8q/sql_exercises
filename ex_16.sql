SELECT I.InvoiceId, count(IL.Quantity)
FROM Invoice I
         INNER JOIN InvoiceLine IL on i.InvoiceId = IL.InvoiceId
GROUP BY I.InvoiceId;
