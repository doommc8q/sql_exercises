SELECT T.Name AS TrackName, A.Title AS AlbumTitle, M.Name AS MediaTypeName, G.Name AS GenreName
FROM Track T
         INNER JOIN Album A on T.AlbumId = A.AlbumId
         INNER JOIN Genre G on T.GenreId = G.GenreId
         INNER JOIN MediaType M on T.MediaTypeId = M.MediaTypeId;
