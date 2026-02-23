1. Simple View
CREATE VIEW Employee_Details AS
SELECT emp_id, emp_name, salary
FROM Employees;

Use:

SELECT * FROM Employee_Details;

2. View with JOIN (Complex SELECT)

CREATE VIEW Employee_Department AS
SELECT e.emp_name, e.salary, d.dept_name
FROM Employees e
JOIN Department d
ON e.dept_id = d.dept_id;

Use:
SELECT * FROM Employee_Department;

3. View for High Salary Employees

CREATE VIEW High_Salary_Employees AS
SELECT emp_name, salary
FROM Employees
WHERE salary > 50000;

Use:

SELECT * FROM High_Salary_Employees;

4. View for Department-wise Average Salary

CREATE VIEW Department_Avg_Salary AS
SELECT dept_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept_id;

Use:

SELECT * FROM Department_Avg_Salary;

5. Drop View

DROP VIEW IF EXISTS High_Salary_Employees;