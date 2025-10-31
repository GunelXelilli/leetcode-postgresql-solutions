# 🐘 PostgreSQL LeetCode SQL Solutions

This repository contains my **PostgreSQL solutions** for the [LeetCode SQL 50 Study Plan](https://leetcode.com/studyplan/top-sql-50/).  
Each problem is categorized by difficulty (Easy / Medium / Hard) and written using clean, efficient SQL code.

---

## 🧭 Table of Contents
- [About](#about)
- [Repository Structure](#repository-structure)
- [Solved Problems](#solved-problems)
- [Example Format](#example-format)
- [Topics Covered](#topics-covered)
- [Environment](#environment)
- [License](#license)
- [Contact](#contact)

---

## 📘 About

This project is part of my journey to strengthen SQL query writing skills through real problem-solving on **LeetCode**.  
All queries are implemented and tested in **PostgreSQL**, focusing on:
- Query optimization
- Clean formatting
- Reusability and readability

---

## 🗂️ Repository Structure
📦 leetcode-postgresql-solutions/
┣ 📂 easy/
┃ ┣ big-countries.sql
┃ ┣ combine-two-tables.sql
┃ ┣ employees-earning-more-than-their-managers.sql
┃ ┣ find-customer-referee.sql
┃ ┣ article-views-i.sql
┃ ┗ ...
┣ 📂 medium/
┃ ┣ consecutive-numbers.sql
┃ ┣ managers-with-at-least-5-direct-reports.sql
┃ ┣ second-highest-salary.sql
┃ ┣ rank-scores.sql
┃ ┗ ...
┣ 📂 hard/
┃ ┗ department-top-three-salaries.sql
┣ 📂 explanations/
┃ ┗ problem-explanations.md
┣ README.md
┗ LICENSE

---

## 🧩 Solved Problems

| # | Problem | Difficulty | Link |
|---|----------|-------------|------|
| 1 | [Big Countries (595)](https://leetcode.com/problems/big-countries/) | 🟢 Easy |
| 2 | [Replace Employee ID With The Unique Identifier (1378)](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/) | 🟢 Easy |
| 3 | [Customer Who Visited But Did Not Make Any Transactions (1581)](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/) | 🟢 Easy |
| 4 | [Project Employees I](https://leetcode.com/problems/project-employees-i/) | 🟢 Easy |
| 5 | [Biggest Single Number](https://leetcode.com/problems/biggest-single-number/) | 🟢 Easy |
| 6 | [Rising Temperature (197)](https://leetcode.com/problems/rising-temperature/) | 🟢 Easy |
| 7 | [Customers Who Bought All Products (1045)](https://leetcode.com/problems/customers-who-bought-all-products/) | 🟠 Medium |
| 8 | [Consecutive Numbers (180)](https://leetcode.com/problems/consecutive-numbers/) | 🟠 Medium |
| 9 | [Managers With At Least 5 Direct Reports (570)](https://leetcode.com/problems/managers-with-at-least-5-direct-reports/) | 🟠 Medium |
| 10 | [The Number of Employees Which Report to Each Employee (1731)](https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/) | 🟢 Easy |
| 11 | [Article Views I (1148)](https://leetcode.com/problems/article-views-i/) | 🟢 Easy |
| 12 | [Find Customer Referee (584)](https://leetcode.com/problems/find-customer-referee/) | 🟢 Easy |
| 13 | [Product Price at a Given Date (1164)](https://leetcode.com/problems/product-price-at-a-given-date/) | 🟠 Medium |
| 14 | [Recyclable and Low-Fat Products (1757)](https://leetcode.com/problems/recyclable-and-low-fat-products/) | 🟢 Easy |
| 15 | [Product Sales Analysis I (1068)](https://leetcode.com/problems/product-sales-analysis-i/) | 🟢 Easy |
| 16 | [Last Person to Fit in the Bus (1204)](https://leetcode.com/problems/last-person-to-fit-in-the-bus/) | 🟠 Medium |
| 17 | [Not Boring Movies (620)](https://leetcode.com/problems/not-boring-movies/) | 🟢 Easy |
| 18 | [Product Sales Analysis III (1070)](https://leetcode.com/problems/product-sales-analysis-iii/) | 🟠 Medium |
| 19 | [Number of Unique Subjects Taught by Each Teacher (1143)](https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/) | 🟢 Easy |
| 20 | [Count Salary Categories (1907)](https://leetcode.com/problems/count-salary-categories/) | 🟠 Medium |
| 21 | [Exchange Seats (626)](https://leetcode.com/problems/exchange-seats/) | 🟠 Medium |
| 22 | [List the Products Ordered in a Period (1327)](https://leetcode.com/problems/list-the-products-ordered-in-a-period/) | 🟢 Easy |
| 23 | [Second Highest Salary (176)](https://leetcode.com/problems/second-highest-salary/) | 🟠 Medium |
| 24 | [Movie Rating (1341)](https://leetcode.com/problems/movie-rating/) | 🟠 Medium |
| 25 | [Department Top Three Salaries (185)](https://leetcode.com/problems/department-top-three-salaries/) | 🔴 Hard |
| 26 | [Friend Requests II: Who Has the Most Friends (602)](https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/) | 🟠 Medium |
| 27 | [Combine Two Tables (175)](https://leetcode.com/problems/combine-two-tables/) | 🟢 Easy |
| 28 | [Rank Scores (178)](https://leetcode.com/problems/rank-scores/) | 🟠 Medium |
| 29 | [Employees Earning More Than Their Managers (181)](https://leetcode.com/problems/employees-earning-more-than-their-managers/) | 🟢 Easy |

🟢 Easy 🟠 Medium 🔴 Hard

---

## 🧱 Example Format (Each SQL File)

Example file: `managers-with-at-least-5-direct-reports.sql`

```sql
-- Problem: Managers With At Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium
-- Description:
--   Find the names of managers who have at least 5 direct reports.

SELECT name
FROM Employee
WHERE id IN (
  SELECT managerId
  FROM Employee
  GROUP BY managerId
  HAVING COUNT(id) >= 5
);

| Category         | Examples                                      |
| ---------------- | --------------------------------------------- |
| Basic Queries    | `SELECT`, `WHERE`, `DISTINCT`, `ORDER BY`     |
| Joins            | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`       |
| Aggregation      | `COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()` |
| Filtering        | `HAVING`, `CASE WHEN`                         |
| Subqueries       | `IN`, `EXISTS`, correlated subqueries         |
| Window Functions | `RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`      |
| CTEs             | `WITH` clause usage                           |


🛠️ Environment

Database: PostgreSQL 16

Tools: DBeaver / pgAdmin 4 / VS Code SQLTools

Platform: LeetCode SQL 50 Study Plan

📜 License

This repository is open-source and licensed under the MIT License
.
You’re free to use, reference, or build upon this code for learning purposes.




