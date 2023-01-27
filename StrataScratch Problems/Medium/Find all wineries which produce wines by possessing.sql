/*

    link   : https://platform.stratascratch.com/coding/10026-find-all-wineries-which-produce-wines-by-possessing-aromas-of-plum-cherry-rose-or-hazelnut?tabname=question
    Author : Mohamed Ibrahim

*/
select distinct winery
FROM winemag_p1
where lower(description) REGEXP '\\b(plum|rose|cherry|hazelnut)\\b'

