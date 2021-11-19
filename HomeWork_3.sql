/* 1. Создайте базу из представленной картинки:
      - у каждой таблицы должно быть поле id;
      - id автоинкрементальный и является первичным ключом. */
create table employees (
	id serial, 
	employee_name varchar(25) not null,
	primary key (id)
);

create table roles (
	id serial,
	role_title varchar (30) unique not null,
	primary key (id)
);

create table employees_roles (
	id serial,
	id_role int not null,
	id_employee int not null,
	primary key (id),
	foreign key (id_employee)
		references employees (id),
	foreign key (id_role)
		references roles (id)
);

create table salary (
	id serial,
	monthly_salary int not null unique,
	primary key (id)
);

create table roles_salary (
	id serial,
	id_role int not null,
	id_salary int not null,
	primary key (id),
	foreign key (id_role)
		references roles (id),
	foreign key (id_salary)
		references salary (id)
);

create table "Service" (
	id serial,
	service_title varchar (50) not null,
	price int not null,
	primary key (id)
);

create table materials (
	id serial,
	material_title varchar (50) not null,
	amount int not null,
	price int not null,
	primary key (id)
);

create table claim (
	id serial,
	service_id int not null,
	employee_id int not null,
	material_id int not null,
	claim_date date not null,
	sales_manager int not null,
	primary key (id),
	foreign key (service_id)
		references "Service" (id),
	foreign key (employee_id)
		references employees (id),
	foreign key (material_id)
		references materials (id),
	foreign key (sales_manager)
		references employees (id)
);

-- 2. Заполните таблицы данными. Не менее 10 строк в каждой таблице.
insert into employees (id, employee_name) values
	(default, 'Everett'),
	(default, 'Lola'),
	(default, 'Henry'),
	(default, 'Lillian'),
	(default, 'Charlie'),
	(default, 'Stella'),
	(default, 'Edwin'),
	(default, 'Genevieve'),
	(default, 'Sam'),
	(default, 'Bark'),
	(default, 'Marshall'),
	(default, 'Evelyn'),
	(default, 'Kelvin'),
	(default, 'Lucy'),
	(default, 'Edgar'),
	(default, 'Clara'),
	(default, 'Ruby'),
	(default, 'Eve'),
	(default, 'Regis'),
	(default, 'Oberon');

insert into roles (id, role_title) values
	(default, 'Junior Java Developer'),
	(default, 'Middle Java Developer'),
	(default, 'Senior Java Developer'),
	(default, 'Middle JavaScript Developer'),
	(default, 'Middle Python Developer'),
	(default, 'Lead Developer'),
	(default, 'Junior Manual QA'),
	(default, 'Senior Manual QA'),
	(default, 'Senior Automatization QA'),
	(default, 'QA Lead'),
	(default, 'UI Designer'),
	(default, 'UX Designer'),
	(default, 'BA'),
	(default, 'Admin'),
	(default, 'Project Manager'),
	(default, 'Product Manager'),
	(default, 'CEO'),
	(default, 'Scrum Master'),
	(default, 'Web Designer'),
	(default, 'System Analyst');

insert into employees (id, employee_name) values
	(default, 'Amelia'),
	(default, 'Arthur'),
	(default, 'Elsie'),
	(default, 'Florence'),
	(default, 'Freddie'),
	(default, 'Harper'),
	(default, 'Isla'),
	(default, 'Jacob'),
	(default, 'Leo'),
	(default, 'Theo'),
	(default, 'Oscar'),
	(default, 'Teddy'),
	(default, 'Willow'),
	(default, 'Theodore'),
	(default, 'Isabella');

insert into employees_roles (id, id_role, id_employee) values
	(default, 19, 2),
	(default, 2, 3),
	(default, 20, 29),
	(default, 3, 25),
	(default, 2, 4),
	(default, 4, 19),
	(default, 1, 35),
	(default, 5, 6),	
	(default, 4, 8),
	(default, 6, 22),
	(default, 5, 9),
	(default, 7, 7),
	(default, 11, 11),
	(default, 8, 33),
	(default, 12, 13),
	(default, 9, 14),
	(default, 19, 27),
	(default, 10, 31),
	(default, 20, 16),	
	(default, 11, 18),
	(default, 7, 12),
	(default, 12, 20),
	(default, 7, 21),
	(default, 13, 15),
	(default, 2, 23),
	(default, 14, 24),
	(default, 7, 1),
	(default, 15, 26),
	(default, 1, 10),
	(default, 16, 28),
	(default, 4, 17),
	(default, 17, 30),	
	(default, 9, 32),	
	(default, 18, 34);

insert into salary (id, monthly_salary) values
	(default, 500),
	(default, 600),
	(default, 700),
	(default, 1100),
	(default, 1500),
	(default, 2000),
	(default, 2800),
	(default, 3000),
	(default, 3300),
	(default, 1550),
	(default, 1900),
	(default, 2100),
	(default, 2350),
	(default, 3500),
	(default, 4000),
	(default, 450),
	(default, 550),
	(default, 650),
	(default, 2300),
	(default, 2400),
	(default, 3400),
	(default, 3900),
	(default, 1200),
	(default, 1150),
	(default, 3250),
	(default, 900),
	(default, 1450),
	(default, 2150),
	(default, 4500),
	(default, 3200),
	(default, 1750),
	(default, 1950);

insert into roles_salary (id, id_role, id_salary) values
	(default, 1, 26),
	(default, 2, 12),
	(default, 3, 15),
	(default, 4, 28),
	(default, 5, 19),
	(default, 6, 9),
	(default, 7, 1),
	(default, 8, 14),	
	(default, 9, 21),
	(default, 10, 22),
	(default, 11, 13),
	(default, 12, 6),
	(default, 13, 32),
	(default, 14, 4),
	(default, 15, 20),
	(default, 16, 8),
	(default, 17, 29),
	(default, 18, 31),
	(default, 19, 10),	
	(default, 20, 27);


insert into "Service" (id, service_title, price) values
	(default, 'IT infrastructure support', 5000),
	(default, 'Business Application Support', 6500),
	(default, 'Users support', 7000),
	(default, 'System implementation and support', 20000),
	(default, 'Implementation of system integration', 27000),
	(default, 'Software development', 50000),
	(default, 'Provision of consulting services', 30000),
	(default, 'Consulting in the field of building IS', 35000),	
	(default, 'Education and training for personnel', 21000),
	(default, 'Frees IT department staff from routine tasks', 15000);

insert into materials (id, material_title, amount, price) values
	(default, 'scandium', 10, 35),
	(default, 'rhenium', 5, 40),
	(default, 'osmium', 20, 120),
	(default, 'iridium', 15, 170),
	(default, 'palladium', 30, 250),
	(default, 'rhodium', 25, 300),
	(default, 'gold', 35, 400),
	(default, 'platinum', 50, 500),	
	(default, 'osmium-187', 55, 1100),
	(default, 'California-252', 1, 25000);

insert into claim (id, service_id, employee_id, material_id, claim_date, sales_manager) values
	(default, 3, 25, 5, '1999-12-12', 26),
	(default, 2, 32, 6, '2000-10-15', 33),
	(default, 1, 17, 10, '2001-11-10', 18),
	(default, 6, 9, 9, '2002-09-05', 10),
	(default, 5, 5, 8, '2003-07-29', 6),
	(default, 4, 28, 3, '2004-08-30', 29),
	(default, 9, 13, 7, '2005-06-09', 14),
	(default, 8, 4, 4, '2006-04-03', 7),
	(default, 10, 2, 2, '2007-03-22', 3),
	(default, 7, 35, 1, '2008-01-19', 34);

-- 3. Добавить таблицу Suppliers с полями id, name.
create table "Suppliers" (
	id serial,
	name varchar(50),
	primary key (id)
);

-- 4. Добавить 10 строк поставщиков в таблицу Suppliers.
insert into "Suppliers" (id, name) values
	(default, 'Mondi'),
	(default, 'ICE SHOP'),
	(default, 'BombSALES'),
	(default, 'Agent love'),
	(default, 'Vsvoem'),
	(default, 'Belluche'),
	(default, 'ELADY'),
	(default, 'Trendoptom'),
	(default, 'Matroskin Kids'),
	(default, 'KINGKIT');

-- 5. Обновить таблицу Materials. Добавить поле supplier_id которое связано с полем id в таблице Suppliers.
alter table materials add column supplier_id int;

alter table materials add constraint FK_materials_supplier_id foreign key (supplier_id) references "Suppliers" (id);

-- 6. Обновить таблицу Employees. Добавить varchar поле surname на 50 символов.
alter table employees add column surname varchar(50);

-- 7. Обновить таблицу Salary. Добавить varchar поле currency на 7 символов.
alter table salary add column currency varchar(7);

	
	


	
