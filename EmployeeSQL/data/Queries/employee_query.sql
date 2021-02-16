SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s on e.emp_no = s.emp_no;

SELECT e.first_name, e.last_name, date_part('year', e.hire_date) AS "year_hire"
FROM employees e
WHERE date_part('year', e.hire_date) = 1986;

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
INNER JOIN dept_manager dm on d.dept_no = dm.dept_no
INNER JOIN employees e on dm.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de on e.emp_no = de.emp_no
INNER JOIN departments d on de.dept_no = d.dept_no;

SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de on e.emp_no = de.emp_no
INNER JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de on e.emp_no = de.emp_no
INNER JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY dept_name;

SELECT e.last_name, count(e.last_name) AS "name_frequency"
FROM employees e
GROUP BY e.last_name
ORDER BY e.last_name DESC;
