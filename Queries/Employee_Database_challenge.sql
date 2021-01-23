-- Pewlett Hackard Retirees Challenge (Module 7)

-- D1:

SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- -- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (emp_no) e.emp_no,
-- e.first_name,
-- e.last_name,
-- ti.title,
-- ti.from_date,
-- ti.to_date
-- -- INTO unique_titles
-- FROM employees as e
-- LEFT JOIN titles as ti
-- ON (e.emp_no = ti.emp_no)
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER BY emp_no, e.emp_no ASC;

-- -- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (emp_no) rt.emp_no,
-- rt.first_name,
-- rt.last_name,
-- rt.title,
-- ti.from_date,
-- ti.to_date
-- -- INTO unique_titles
-- FROM retirement_titles as rt
-- INNER JOIN titles as ti
-- ON (rt.emp_no = ti.emp_no)
-- INNER JOIN employees as e
-- ON (e.emp_no = rt.emp_no)
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER BY emp_no, rt.emp_no ASC, to_date, ti.to_date DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT * FROM (
    SELECT DISTINCT ON (emp_no) rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title,
    ti.from_date, 
    ti.to_date
    -- INTO unique_titles
    FROM retirement_titles as rt
    INNER JOIN titles as ti
    ON (rt.emp_no = ti.emp_no)
    INNER JOIN employees as e
    ON (e.emp_no = rt.emp_no)
    WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    ) k
ORDER BY emp_no ASC, to_date DESC;