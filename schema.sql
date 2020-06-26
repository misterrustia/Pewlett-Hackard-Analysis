CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE (dept_name)
);

Create Table employees (
	emp_no int not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gender date not null,
	hire_date date not null,
	primary key(emp_no)
);

Create table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no, dept_no )
);
 
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE  titles (
	emp_no INT NOT NULL,
	title VARCHAR(50) not null,
	from_date date not null,
	to_date date,
	foreign key (emp_no) references employees (emp_no),
	PRIMARY key (emp_no, title, from_date)
);

