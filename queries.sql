-- List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees as e
join salaries as s on e.emp_no = s.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date 
from employees
where hire_date like '%1986'
order by hire_date

-- List the manager of each department along with their department number, department name, employee number, last name, and first name 
select m.dept_no, m.emp_no, e.last_name, e.first_name, d.dept_name
from dept_manager as m
join employees as e on (m.emp_no = e.emp_no)
join departments as d on (m.dept_no = d.dept_no)

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select j.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as j 
join employees as e on (j.emp_no = e.emp_no)
join departments as d on (j.dept_no = d.dept_no)
order by emp_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name like 'Hercules%'
and last_name like 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name
select e.emp_no, e.last_name, e.first_name
from employees as e 
join dept_emp as j on (e.emp_no=j.emp_no)
join departments as d on (d.dept_no=j.dept_no)
where dept_name='Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select d.dept_name, e.emp_no, e.last_name, e.first_name
from departments as d 
join dept_emp as j on (d.dept_no=j.dept_no)
join employees as e on (e.emp_no=j.emp_no)
where dept_name='Sales' or dept_name='Development'

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select last_name, count(last_name) as counts 
from employees
group by last_name
order by counts desc