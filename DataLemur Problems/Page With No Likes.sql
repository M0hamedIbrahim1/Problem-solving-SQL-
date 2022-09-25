/*

  link : https://datalemur.com/questions/sql-page-with-no-likes
  author : Mohamed Ibrahim
  
*/

SELECT pages.page_id
FROM pages LEFT JOIN page_likes ON pages.page_id = page_likes.page_id
WHERE page_likes.page_id IS NULL;

