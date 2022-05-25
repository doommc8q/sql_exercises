SELECT count(*) AS InvoiceTotal, I.BillingCountry
FROM InvoiceLine IL
INNER JOIN Invoice I ON I.InvoiceID = IL.InvoiceID
GROUP BY I.BillingCountry;

