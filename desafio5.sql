SELECT 
    s.song_name AS cancao, COUNT(l.song_id) AS reproducoes
FROM
    SpotifyClone.songs AS s
        INNER JOIN
    SpotifyClone.listening_history AS l ON l.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC
LIMIT 2;
