SELECT 
    a.`name` AS artista, alb.title AS album
FROM
    SpotifyClone.artists AS a
        INNER JOIN
    SpotifyClone.albums AS alb ON alb.artist_id = a.artist_id
HAVING artista = 'Elis Regina'
ORDER BY album;
