
CREATE TABLE Office (
    Emp_ID INT PRIMARY KEY,
    Emp_names VARCHAR(50),
    Department VARCHAR(20),
    Salary INT,
    Joining_Date DATE
);


INSERT INTO Office (Emp_ID, Emp_names, Department, Salary, Joining_Date)
VALUES 
(101, 'Rohan', 'Tech', 70000, '2023-01-15'),
(102, 'Anjali', 'Sales', 55000, '2023-02-20'),
(103, 'Vikram', 'Tech', 85000, '2022-11-05'),
(104, 'Sneha', 'HR', 45000, '2023-05-12'),
(105, 'Kabir', 'Sales', 90000, '2021-08-30'),
(106, 'Meera', 'Tech', 60000, '2023-03-10');


The "Job Interview" Question:
"Find all departments where the total salary spent is more than the company's average department spend."

The Logic (Steps to Perfection):

Step 1: Calculate the total salary for each department (GROUP BY).

Step 2: Calculate the average of those totals (Subquery).

Step 3: Compare them (HAVING).


  SELECT Department, SUM(Salary) AS TotalSalary FROM Office
  GROUP BY Department
  HAVING SUM(Salary) > (SELECT AVG(DeptTotal)
  FROM (SELECT SUM(Salary) AS DeptTotal FROM Office GROUP BY Department) AS TempTable);


-- A more complex multi-table query:
-- For each department location, what's the total revenue from completed orders


select d.dept_name, e.name, o.product, d.location, count(o.order_id) as total_orders, sum(o.amount) as total_amount, o.status from departments d
left join employees e on e.department = d.dept_name
left join orders o on e.emp_id = o.emp_id 
where o.status = 'Completed'
group by d.location, d.dept_name
order by total_amount desc;


-- Show employee name, their department location, and their orders

select e.name, d.location, o.product, o.amount from employees e
inner join departments d on e.department = d.dept_name
inner join orders o on e.emp_id = o.emp_id
order by e.name;











































-- I want to see the names of all employees who have a salary higher than the average salary of the whole company."

-- Hint: This requires a Subquery (a query inside a query).
-- Logic: First, find the average. Then, find the names where salary > that average.

SELECT Emp_names, Salary From Office
WHERE Salary > ( 
  SELECT AVG(Salary) 
  FROM Office
);


