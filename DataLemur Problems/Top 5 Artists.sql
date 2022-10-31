/*
  link   : https://datalemur.com/questions/top-fans-rank
  author : Mohamed Ibrahim

*/
SELECT artist_name, dense_RANK() OVER ( ORDER BY song_app desc) as artist_rank

FROM (
  
  SELECT a.artist_name, count(a.artist_id) as song_app
  FROM artists a
  LEFT JOIN songs s ON a.artist_id=s.artist_id
  LEFT JOIN global_song_rank g ON s.song_id=g.song_id 
  WHERE rank<=10
  GROUP BY a.artist_name)a

LIMIT 6






