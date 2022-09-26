SELECT 
    s.song_name AS nome, COUNT(l.user_id) AS reproducoes
FROM
    SpotifyClone.songs AS s
        INNER JOIN
    SpotifyClone.listening_history AS l ON l.song_id = s.song_id
        INNER JOIN
    SpotifyClone.users AS u ON u.user_id = l.user_id
        INNER JOIN
    SpotifyClone.plans AS p ON p.plan_id = u.plan_id
GROUP BY nome , p.`type`
HAVING p.`type` = 'pessoal'
    OR p.`type` = 'gratuito'
ORDER BY nome;
