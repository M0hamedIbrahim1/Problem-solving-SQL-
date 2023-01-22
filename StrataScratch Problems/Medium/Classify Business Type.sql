/*

    link   : https://platform.stratascratch.com/coding/9726-classify-business-type?tabname=question
    author : Mohamed Ibrahim

*/


SELECT distinct business_name,
    case
        when business_name like '%restaurant%' then 'restaurant'
        when business_name like '%cafe%' then 'cafe'
        when business_name like '%café%' then 'cafe'
        when business_name like '%coffee%' then 'cafe'
        when business_name like '%school%' then 'school'
        else 'other'
    end type

FROM sf_restaurant_health_violations



