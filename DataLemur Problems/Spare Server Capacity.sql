/*

    link : https://datalemur.com/questions/sql-spare-server-capacity
    author : Mohamed Ibrahim

*/
SELECT d.datacenter_id,
      d.monthly_capacity -
      (SELECT SUM(f.monthly_demand) 
      FROM forecasted_demand f
          where d.datacenter_id = f.datacenter_id 
          GROUP BY f.datacenter_id ) as spare_capacity
FROM datacenters d
ORDER BY datacenter_id



