SELECT 
    u.username AS usuario,
    COUNT(l.song_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND((s.song_duration / 60), 2)) AS total_minutos
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.listening_history AS l ON u.user_id = l.user_id
        INNER JOIN
    SpotifyClone.songs AS s ON s.song_id = l.song_id
GROUP BY u.username
ORDER BY username;
