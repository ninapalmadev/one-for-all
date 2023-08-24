SELECT
  ROUND(MIN(p.plan_price), 2) AS faturamento_minimo,
  ROUND(MAX(p.plan_price), 2) AS faturamento_maximo,
  ROUND(AVG(p.plan_price), 2) AS faturamento_medio,
  ROUND(SUM(p.plan_price), 2) AS faturamento_total
FROM
  SpotifyClone.users_table u
  JOIN SpotifyClone.plans_table p ON u.plan_id = p.plan_id;