/*
    link   : https://datalemur.com/questions/spotify-streaming-history
    author : Mohamed Ibrahim

*/


SELECT 
CASE WHEN h.user_id isnull THEN t2.user_id ELSE h.user_id end,
CASE WHEN h.song_id isnull THEN t2.song_id ELSE h.song_id end,

CASE
  WHEN song_plays isnull THEN listen_time
  WHEN listen_time isnull then song_plays
  ELSE song_plays+listen_time
end as song_plays

FROM songs_history h
FULL OUTER JOIN 
(SELECT 
    user_id,song_id,
    COUNT(listen_time) as listen_Time
FROM 
    songs_weekly s
WHERE listen_time < '08/05/2022'
GROUP BY user_id,song_id) as t2
on t2.user_id = h.user_id
and t2.song_id = h.song_id
ORDER BY song_plays DESC


/*
        other Sol : 
*/

 



Select user_id,song_id,SUM(song_plays) as song_count FROM
(
SELECT user_id,song_id,song_plays FROM songs_history
UNION ALL
SELECT user_id,song_id,COUNT(song_id) as song_plays FROM songs_weekly
where DATE(listen_time) <= '08/04/2022'
group by user_id,song_id
) as sng
GROUP BY user_id,song_id
order by SUM(song_plays) DESC

