SELECT I.InvoiceId, T.Name, A2.Name
From InvoiceLine I
         INNER JOIN Track T on I.TrackId = T.TrackId
         INNER JOIN Album A on T.AlbumId = A.AlbumId
         INNER JOIN Artist A2 on A.ArtistId = A2.ArtistId
         GROUP BY t.Name;
