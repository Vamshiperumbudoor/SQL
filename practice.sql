SELECT Emp_names, Salary From Office
WHERE Salary > ( 
  SELECT AVG(Salary) 
  FROM Office
);
