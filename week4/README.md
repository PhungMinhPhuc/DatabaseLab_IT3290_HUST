# Week 4 – SQL Practice (Employees Table)

This document contains SQL practice exercises using the **employees** table.

## Exercises

### 1. Display First and Last Name with Alias
Write a query to display `first_name` and `last_name` using the aliases **"First Name"** and **"Last Name"**.

```sql
SELECT first_name AS "First Name",
       last_name AS "Last Name"
FROM employees;
```

### 2. Get Unique Department IDs
Retrieve the unique department IDs from the `employees` table.

```sql
SELECT DISTINCT department_id
FROM employees;
```

### 3. Employee Details Sorted by First Name (Descending)
Display all employee details sorted by `first_name` in descending order.

```sql
SELECT *
FROM employees
ORDER BY first_name DESC;
```

### 4. Display Salary and PF (15% of Salary)
Show `first_name`, `last_name`, `salary`, and **PF (15% of salary)** for all employees.

```sql
SELECT first_name,
       last_name,
       salary,
       salary * 0.15 AS PF
FROM employees;
```

### 5. Employee ID, Name, and Salary (Ascending Order)
Display `employee_id`, `first_name`, `last_name`, and `salary` sorted by salary in ascending order.

```sql
SELECT employee_id,
       first_name,
       last_name,
       salary
FROM employees
ORDER BY salary ASC;
```

### 6. Total Salary Payable
Retrieve the total salary that must be paid to all employees.

```sql
SELECT SUM(salary) AS total_salary
FROM employees;
```

### 7. Highest and Lowest Salary
Retrieve the maximum and minimum salary from the `employees` table.

```sql
SELECT MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees;
```

### 8. Average Salary and Number of Employees
Retrieve the average salary and the total number of employees.

```sql
SELECT AVG(salary) AS average_salary,
       COUNT(*) AS total_employees
FROM employees;
```

### 9. Number of Employees in the Company
Retrieve the total number of employees in the company.

```sql
SELECT COUNT(*) AS employee_count
FROM employees;
```

### 10. Number of Distinct Jobs
Retrieve the number of distinct job roles in the `employees` table.

```sql
SELECT COUNT(DISTINCT job_id) AS job_count
FROM employees;
```

### 11. Display First Names in Uppercase
Retrieve `first_name` from employees and display them in uppercase.

```sql
SELECT UPPER(first_name)
FROM employees;
```

### 12. First 3 Characters of First Name
Retrieve the first 3 characters of `first_name`.

```sql
SELECT SUBSTRING(first_name, 1, 3)
FROM employees;
```

### 13. Calculate Expression
Write a query to calculate:

171 * 214 + 625

```sql
SELECT 171 * 214 + 625 AS result;
```

### 14. Full Name (First + Last)
Retrieve the full name by combining `first_name` and `last_name`.

Example: Ellen Abel, Sundar Ande

```sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;
```

### 15. Remove Leading and Trailing Spaces
Retrieve `first_name` and remove any spaces on the left and right.

```sql
SELECT TRIM(first_name)
FROM employees;
```

### 16. Length of First and Last Name
Retrieve the length of `first_name` and `last_name`.

```sql
SELECT first_name,
       last_name,
       LENGTH(first_name) AS first_name_length,
       LENGTH(last_name) AS last_name_length
FROM employees;
```

### 17. Check if First Name Contains Numbers
Check if any employee has numbers in their `first_name`.

```sql
SELECT *
FROM employees
WHERE first_name REGEXP '[0-9]';
```

### 18. Retrieve the First 10 Rows
Retrieve the first 10 rows from the `employees` table.

```sql
SELECT *
FROM employees
LIMIT 10;
```

### 19. Monthly Salary (Rounded to 2 Decimals)
Assume `salary` is stored as **annual salary**. Retrieve the **monthly salary**, rounded to 2 decimal places.

```sql
SELECT first_name,
       last_name,
       ROUND(salary / 12, 2) AS monthly_salary
FROM employees;
```
