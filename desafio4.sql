SELECT 
    u.username AS usuario,
    IF(YEAR(MAX(l.listening_date)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.listening_history AS l ON u.user_id = l.user_id
GROUP BY u.username
ORDER BY username;
