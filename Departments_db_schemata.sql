CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	CONSTRAINT pk_departments PRIMARY KEY (
		dept_no
	)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	CONSTRAINT pk_titles PRIMARY KEY (
		title_id
		)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date date NOT NULL,
	CONSTRAINT pk_employees PRIMARY KEY (
		emp_no
		)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

ALTER TABLE dept_manager
ALTER COLUMN emp_no TYPE INT USING emp_no::INT;
