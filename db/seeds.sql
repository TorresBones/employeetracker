USE company_db;

INSERT INTO employees(id, first_name, last_name, roles_id, manager_id)
VALUES
(01, 'Shaquille', 'Oneill'),
(02, 'Michael', 'Jordan'),
(03, 'Paul', 'Pierce'),
(04, 'Kevin', 'Garnette'),
(05, 'Kobe', 'Bryant'),
(06, 'Ray', 'Allen'),
(07, 'Larry', 'Bird'),
(08, 'Reggie', 'Miller');

INSERT INTO department(department_name, roles_id)
VALUES
('Inventory', '1'),
('Shipping', '2'),
('Receiving', '3'),
('VAS', '4'),
('Production', '5');

INSERT INTO roles(title, salary, department_id)
VALUES
('Inventory Manager', 65000, 1),
('Shipping Clerk', 40000, 2),
('Receiving Clerk', 40000, 3),
('VAS Supervisor', 50000, 4),
('General Manager', 75000, 5);