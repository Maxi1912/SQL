-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees e
	join employees_salary es on e.id=es.employee_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name from employees e
	join employees_salary es on e.id=es.employee_id
	where monthly_salary<2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary from employees_salary es 
	left join employees e on e.id=es.employee_id
	where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary from employees_salary es
	left join employees e on es.employee_id=e.id
	where monthly_salary<2000 and employee_name is null;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name from employees e 
	left join employees_salary es on es.employee_id=e.id
	where monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from employees e 
	join roles_employees re on e.id=re.employee_id
	join roles r on r.id=re.role_id;
	
-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from employees e 
	join roles_employees re on e.id=re.employee_id
	join roles r on r.id=re.role_id
	where role_name like ('%Java %');

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees e 
	join roles_employees re on e.id=re.employee_id
	join roles r on r.id=re.role_id
	where role_name like ('%Python%');

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees e 
	join roles_employees re on e.id=re.employee_id
	join roles r on r.id=re.role_id
	where role_name like ('%QA%');

--  10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees e 
	join roles_employees re on e.id=re.employee_id 
	join roles r on r.id=re.role_id
	where role_name like ('%Manual QA%');

-- 11. ������� ����� � ��������� ��������������� QA.
select employee_name, role_name from employees e 
	join roles_employees re on e.id=re.employee_id
	join roles r on r.id=re.role_id
	where role_name like ('%Automation QA%');

--  12. ������� ����� � �������� Junior ������������.
select employee_name, monthly_salary from employees e 
	join roles_employees re on e.id=re.employee_id
	join roles r on r.id=re.role_id
	join employees_salary es on es.employee_id=e.id
	where role_name like ('%Junior%');

--  13. ������� ����� � �������� Middle ������������.
select employee_name, monthly_salary from employees e 
	join roles_employees re on e.id=re.employee_id
	join roles r on r.id=re.role_id
	join employees_salary es on es.employee_id=e.id
	where role_name like ('%Middle%');

-- 14. ������� ����� � �������� Senior ������������.
select employee_name, monthly_salary, role_name from employees e 
	join roles_employees re on e.id=re.employee_id 
	join roles r on r.id=re.role_id
	join employees_salary es on es.employee_id=e.id
	where role_name like ('%Senior%');

-- 15. ������� �������� Java �������������.
select monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%Java %');

-- 16. ������� �������� Python �������������.
select monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%Python%');

-- 17. ������� ����� � �������� Junior Python �������������.
select employee_name, monthly_salary, role_name from employees_salary es
	right join roles_employees re on re.employee_id=es.employee_id
	right join roles r on r.id=re.role_id
	left join employees e on e.id=re.employee_id
	where role_name like('%Junior Python%');

-- 18. ������� ����� � �������� Middle JS �������������.
select employee_name, monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	join employees e on e.id=re.employee_id
	where role_name like('%Middle JavaScript%');

-- 19. ������� ����� � �������� Senior Java �������������.
select employee_name, monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	join employees e on e.id=re.employee_id
	where role_name like('%Senior Java%');

-- 20. ������� �������� Junior QA ���������.
select monthly_salary, role_name from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%Junior%QA%');

-- 21. ������� ������� �������� ���� Junior ������������.
select avg(monthly_salary) avg_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%Junior%');

-- 22. ������� ����� ������� JS �������������.
select sum(monthly_salary) sum_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%JavaScript%');

-- 23. ������� ����������� �� QA ���������.
select min(monthly_salary) min_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%QA%');

-- 24. ������� ������������ �� QA ���������.
select max(monthly_salary) max_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%QA%');

-- 25. ������� ���������� QA ���������.
select count(*) "count_QA" from roles r
	join roles_employees re on r.id=re.role_id
	where role_name like('%QA%');

-- 26. ������� ���������� Middle ������������.
select count(*) "count_Middle" from roles r
	join roles_employees re on r.id=re.role_id
	where role_name like('%Middle%');

-- 27. ������� ���������� �������������.
select count(*) "count_Developer" from roles r
	join roles_employees re on r.id=re.role_id
	where role_name like('%developer');

-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) sum_salary from employees_salary es
	join roles_employees re on es.employee_id=re.employee_id
	join roles r on r.id=re.role_id
	where role_name like('%developer');

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������.
select employee_name, role_name, monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	join employees e on e.id=re.employee_id
	order by employee_name, role_name asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300.
select employee_name, role_name, monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	join employees e on e.id=re.employee_id
	where monthly_salary between 1700 and 2300
	order by employee_name asc;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300.
select employee_name, role_name, monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	join employees e on e.id=re.employee_id
	where monthly_salary<2300
	order by employee_name asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000.
select employee_name, role_name, monthly_salary from employees_salary es
	join roles_employees re on re.employee_id=es.employee_id
	join roles r on r.id=re.role_id
	join employees e on e.id=re.employee_id
	where monthly_salary in(1100, 1500, 2000)
	order by employee_name asc;








