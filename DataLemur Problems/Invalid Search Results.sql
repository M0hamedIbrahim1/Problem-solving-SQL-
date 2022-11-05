/*

    link   : https://datalemur.com/questions/invalid-search-pct
    author : Mohamed Ibrahim


*/

SELECT 
  country,
  SUM(num_search) AS total_searches,
  ROUND(SUM(num_search * invalid_result_pct)/SUM(num_search),2) AS invalid_searches_pct
FROM search_category
WHERE invalid_result_pct IS NOT NULL
GROUP BY country
ORDER BY country;


