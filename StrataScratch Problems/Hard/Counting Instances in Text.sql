/*

    link   : https://platform.stratascratch.com/coding/9814-counting-instances-in-text?tabname=question
    author : Mohamed Ibrahim

*/

select 
  "bull" as word, 
  (Select COUNT(*) as count FROM google_file_store WHERE lower(contents) like '% bull %') as count
  
Union

select 
    "bear" as word,
    (Select COUNT(*) as count FROM google_file_store WHERE lower(contents) like '% bear %') as count
    
    
   
