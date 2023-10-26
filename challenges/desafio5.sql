SELECT
  s.music_table AS cancao,
  COUNT(*) AS reproducoes
FROM
  SpotifyClone.historic_table h
  JOIN SpotifyClone.musics_table s ON h.song_id = s.song_id
GROUP BY
  h.song_id
ORDER BY
  reproducoes DESC, cancao ASC
LIMIT 2;