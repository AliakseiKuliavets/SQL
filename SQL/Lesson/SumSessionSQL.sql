
-- --Посчитайте количество всех сотрудников, не учитывай сотрудников из департамента Sales
-- SELECT
-- count(*)
-- from employees t1
-- INNER JOIN departments t2 ON t1.department_id = t2.department_id
-- WHERE t2.department_name != 'Sales'

-- -- посчитайте количество стран из следующих регионов ЕВРОПА Азия 
-- SELECT
-- COUNT(*)
-- from countries t1
-- INNER JOIN regions t2 ON t1.region_id = t2.region_id
-- WHERE t2.region_name in ('Europe','Asia')

-- Task 3
-- Посчитайте сумму выплаченных зарплат департаментов, которые находятся в'UK'
SELECT
sum(t1.salary)
from employees t1
INNER JOIN departments t2
ON t1.department_id = t2.department_id
INNER JOIN locations t3
ON t2.location_id = t3.location_id
WHERE t3.country_id == 'UK'

--SELECT * FROM departments;
--SELECT * FROM jobs;
--SELECT * FROM locations;
--SELECT * FROM regions;
--SELECT * FROM countries;
--SELECT * FROM employees;