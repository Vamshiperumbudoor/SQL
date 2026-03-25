-- I want to see the names of all employees who have a salary higher than the average salary of the whole company."

-- Hint: This requires a Subquery (a query inside a query).
-- Logic: First, find the average. Then, find the names where salary > that average.

SELECT Emp_names, Salary From Office
WHERE Salary > ( 
  SELECT AVG(Salary) 
  FROM Office
);
