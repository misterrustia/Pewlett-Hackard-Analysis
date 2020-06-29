1.1
SELECT 
	ce.emp_no,
	ce.first_name,
	ce.last_name,
	ti.title,
	s.from_date,
	s.salary
--INTO deliverable_1_ret_emp_title
FROM current_emp as ce
INNER JOIN titles as ti ON (ce.emp_no = ti.emp_no)
INNER JOIN salaries as s ON (ce.emp_no= s.emp_no)


SELECT * from current_emp



SELECT * from deliverable_1_ret_emp_title
1.2 
SELECT emp_no,
	first_name,
	last_name,
	title,
	from_date,
	salary
INTO new_retire_D_1_2
FROM
 (SELECT emp_no,
	first_name,
	last_name,
	title,
	from_date,
	salary, ROW_NUMBER() OVER (PARTITION BY (emp_no) ORDER BY from_date DESC) rn
 FROM deliverable_1_ret_emp_title
 ) 
tmp WHERE rn = 1
ORDER BY emp_no;
SELECT * FROM new_retire_D_1_2

select * from new_retire_d_1_2

-- practice from hint link 
SELECT 
	first_name,
	last_name,
	count(*)
FROM deliverable_1_ret_emp_title
GROUP BY
	first_name,
	Last_name
HAVING count(*) > 1
ORDER BY count(*);

SELECT * FROM new_retire_D_1_2;

SELECT * FROM employees;


SELECT * from current_emp;

--deliverable # 2 

SELECT 
	e.emp_no,
	e.first_name,
	e.last_name,
	rn.title,
	rn.from_date,
	e.birth_date,
	ce.to_date
--INTO D_2_Mentorship
FROM new_retire_D_1_2 AS rn
INNER JOIN employees AS e ON (rn.emp_no = e.emp_no)
INNER JOIN current_emp AS ce ON (ce.emp_no= e.emp_no)
WHERE (e.birth_date BETWEEN '1955-01-01' AND '1955-12-31')
ORDER BY e.birth_date DESC;

select * from D_2_Mentorship
-- I ran 1955 to 65 as 65- to 65 gave zero people - i think its supposed to be 55 
-- as I got zero for every year besides 55 
SELECT
	e.emp_no,
	e.birth_date,
	ce.first_name,
	ce.last_name
from current_emp as ce
INNER JOIN employees as e ON (e.emp_no = ce.emp_no)
	WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY birth_date DESC;


SELECT 
	rn.emp_no,
	rn.first_name,
	rn.last_name,
	e.birth_date
from new_retire_D_1_2 AS rn
INNER JOIN employees AS e ON (rn.emp_no = e.emp_no)
WHERE(e.birth_date BETWEEN '1955-01-01'AND '1965-12-31');

