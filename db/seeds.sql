USE company_db;

INSERT INTO employees(id, first_name, last_name, roles_id, manager_id)
VALUES
(1, 'Shaquille', 'Oneill', 1, 1),
(2, 'Michael', 'Jordan',3, 3),
(3, 'Paul', 'Pierce', 1, 1),
(4, 'Kevin', 'Garnette', 4, 4),
(5, 'Kobe', 'Bryant', 5, 5),
(6, 'Ray', 'Allen', 2, 2),
(7, 'Larry', 'Bird', 3, 3),
(8, 'Reggie', 'Miller', 5, 5);

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