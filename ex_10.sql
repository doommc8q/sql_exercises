SELECT InvoiceId, COUNT(InvoiceId) AS TotalNumber
FROM InvoiceLine
GROUP BY InvoiceId;
