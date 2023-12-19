USE employees_db;

INSERT INTO employees (id, first_name, last_name)
VALUES
(1, 'Shaquille', 'Oneill'),
(2, 'Michael', 'Jordan'),
(3, 'Paul', 'Pierce');



INSERT INTO department (id, roles_id, department_name)
VALUES
(1, 1, 'Inventory'),
(2, 2,'Shipping'),
(3, 3,'Receiving');

INSERT INTO roles (title, salary, department_id)
VALUES
('Inventory Manager', 65000, 1),
('Shipping Clerk', 40000, 2),
('Receiving Clerk', 40000, 3);