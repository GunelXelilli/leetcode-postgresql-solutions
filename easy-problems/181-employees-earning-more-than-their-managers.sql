-- Problem: Employees Earning More Than Their Managers
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Difficulty: Easy
-- Description:
--   Find employees whose salary is greater than their manager's salary. 
--   Use a self-join on the Employee table by matching employee.managerId 
--   to manager.id and comparing their salaries.

select e.name as Employee from Employee e
join Employee m on m.id=e.managerId
where e.salary>m.salary
