--- Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries as s
ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no desc;

---Question 2
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join employees AS e
on (dm.emp_no = e.emp_no);

--- Question 3
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments AS d
on (de.dept_no = d.dept_no)
order by e.emp_no;

--Question 4
SELECT first_name, last_name, birth_date, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';


-- Question 5
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales'
order by e.emp_no;


-- Question 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales' OR d.dept_name = 'Development'
order by e.emp_no;

-- Question 7 
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;