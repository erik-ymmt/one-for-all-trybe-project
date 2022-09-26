SELECT 
	song_name AS nome_musica,
    CASE
        WHEN song_name LIKE '%bard%'
			THEN REPLACE(song_name, 'Bard', 'QA')
        WHEN song_name LIKE '%amar%'
			THEN REPLACE(song_name,'Amar', 'Code Review')
        WHEN song_name LIKE '%pais'
			THEN REPLACE(song_name, 'Pais', 'Pull Requests')
        WHEN song_name LIKE '%soul'
			THEN REPLACE(song_name, 'SOUL', 'CODE')
        WHEN song_name LIKE '%superstar'
			THEN REPLACE(song_name, 'SUPERSTAR', 'SUPERDEV')
        ELSE null
    END AS novo_nome
FROM
    SpotifyClone.songs
GROUP BY song_name
HAVING novo_nome IS NOT NULL
ORDER BY novo_nome DESC;
