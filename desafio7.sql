SELECT 
    a.name AS artista,
    alb.title AS album,
    COUNT(flw.artist_id) AS seguidores
FROM
    SpotifyClone.albums AS alb
        INNER JOIN
    SpotifyClone.artists AS a ON alb.artist_id = a.artist_id
        INNER JOIN
    SpotifyClone.artists_followed AS flw ON flw.artist_id = a.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC , artista, album;
