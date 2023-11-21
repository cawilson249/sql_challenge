-- create first table
drop table if exists titles;

Create table titles(
	title_id varchar primary key,
	title varchar
);

-- select * from titles;
drop table if exists employees;
create table employees (
	emp_no int primary key,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	foreign key (emp_title_id) references titles(title_id)
);

--select * from employees;
drop table if exists departments;
create table departments(
	dept_no varchar primary key,
	dept_name varchar
);
--select * from departments;
drop table if exists dept_manager;
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- table data cannot be imported or copied


drop table if exists dept_emp;
CREATE TABLE dept_emp(
	emp_no int,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- table data cannot be imported or copied

drop table if exists salaries;

create table salaries(
	emp_no INT PRIMARY KEY,
	salary int,
	foreign key (emp_no) references employees (emp_no)
);

--- select * from salaries;