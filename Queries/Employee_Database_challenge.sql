-- Pewlett Hackard Retirees Challenge (Module 7)

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (titles) e.emp_no,
e.first_name,
e.last_name,
t.title

-- INTO retirees_title
FROM _______
ORDER BY _____, _____ DESC;


-- -- Create new table for retiring employees
--      SELECT emp_no, first_name, last_name
--      INTO retirement_info
--      FROM employees
--      WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--      AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Filter the data on the birth_date column 
-- to retrieve the employees who were born between 1952 and 1955. 
-- Then, order by the employee number.