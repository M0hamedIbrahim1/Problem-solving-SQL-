/*
    Link   : https://leetcode.com/problems/patients-with-a-condition/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim

*/

select patient_id, patient_name, conditions from patients
where conditions like 'DIAB10%' or conditions like '% DIAB10%'; 

