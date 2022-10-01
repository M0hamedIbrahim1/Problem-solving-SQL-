/*

    link   : https://leetcode.com/problems/article-views-i/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim
    
*/


select distinct author_id as id from Views 
where author_id = viewer_id 
order by id asc;

