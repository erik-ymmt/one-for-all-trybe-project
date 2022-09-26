SELECT 
    COUNT(song_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.listening_history
WHERE
    user_id = 1
GROUP BY user_id;
