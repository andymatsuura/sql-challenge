create table departments (
	dept_no CHAR(4) not null,
	dept_name VARCHAR(50) not null,
	primary key (dept_no));

create table titles (
	title_id CHAR(5) NOT NULL,
	title VARCHAR(50),
	primary key(title_id));

create table employees (
	emp_no INT not null,
	emp_title_id CHAR(5),
	birth_date VARCHAR(30),
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	sex VARCHAR(10),
	hire_date VARCHAR(30),
	primary key(emp_no),
	foreign key (emp_title_id) references titles(title_id));

create table dept_emp (
	emp_no int,
	dept_no CHAR(4),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no));

create table dept_manager (
	dept_no CHAR(4),
	emp_no INT,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no));

create table salaries (
	emp_no INT,
	salary INT,
	foreign key (emp_no) references employees(emp_no));
 
select * from departments	
select * from titles
select * from employees
select * from dept_emp
select * from dept_manager
select * from salaries