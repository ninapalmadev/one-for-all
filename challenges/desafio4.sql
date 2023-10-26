SELECT
  u.user_name AS pessoa_usuaria,
  CASE WHEN MAX(h.data_reproducao) >= '2021-01-01' 
  THEN 'Ativa' 
  ELSE 'Inativa' 
  END AS status_pessoa_usuaria
FROM
  SpotifyClone.users_table u
  LEFT JOIN SpotifyClone.historic_table h ON u.user_id = h.user_id
GROUP BY
  u.user_id
ORDER BY
  pessoa_usuaria ASC;