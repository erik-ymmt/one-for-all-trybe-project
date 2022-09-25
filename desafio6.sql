SELECT 
    FORMAT(MIN(p.price), 2) AS faturamento_minimo,
    FORMAT(MAX(p.price), 2) AS faturamento_maximo,
    FORMAT(AVG(p.price), 2) AS faturamento_medio,
    FORMAT(SUM(p.price), 2) AS faturamento_total
FROM
    SpotifyClone.plans AS p
        INNER JOIN
    SpotifyClone.users AS u ON u.plan_id = p.plan_id;
