ALTER TABLE employees
DROP COLUMN gender ;

select * from employees ;

drop table employees ;

Alter Table employees 
add column gender VARCHAR ;

copy dept_emp from '/Users/robertrustia/public/dept_emp copy.csv';

select * from dept_emp;

drop table dept_manager ;

Create table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	foreign key (dept_no) references departments(dept_no)

);

select * from dept_manager;

select * from departments ;

SELECT COUNT(first_name) 
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
 ;

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

SELECT COUNT (first_name) 
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

SELECT COUNT (first_name) 
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

-- Retirement eligibility
SELECT COUNT (first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND
(hire_date BETWEEN '1985-01-01' AND '1988-12-31');


-- Retirement eligibility new table created reitrement_info 
SELECT  first_name, last_name 
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND
(hire_date BETWEEN '1985-01-01' AND '1988-12-31');

select * from retirement_info ;

DROP TABLE retirement_info ;