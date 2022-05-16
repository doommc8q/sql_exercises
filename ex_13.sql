SELECT count(InvoiceId) AS Numbers, BillingCountry
FROM Invoice
GROUP BY BillingCountry;
