/** https://www.hackerrank.com/challenges/the-company/problem **/

SELECT c.company_code, c.founder, COUNT(DISTINCT e.lead_manager_code), COUNT(DISTINCT e.senior_manager_code), COUNT(DISTINCT e.manager_code), COUNT(DISTINCT e.employee_code)
FROM Company AS c
INNER JOIN Employee AS e
ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
