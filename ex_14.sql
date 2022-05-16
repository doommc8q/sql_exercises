SELECT count(t.TrackId), p.Name
FROM Playlist P
         INNER JOIN PlaylistTrack PT on P.PlaylistId = PT.PlaylistId
         INNER JOIN Track T on PT.TrackId = T.TrackId
GROUP BY p.Name;
