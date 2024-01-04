
USE employees_db;

INSERT INTO employees (id, first_name, last_name, roles_id, manager_id)
VALUES
(1, 'Shaquille', 'Oneill', 1, 1)
ON DUPLICATE KEY UPDATE

  first_name = VALUES(first_name),
  last_name = VALUES(last_name),
  roles_id = VALUES(roles_id),
  manager_id = VALUES(manager_id);

INSERT INTO employees (id, first_name, last_name, roles_id, manager_id)
VALUES
(2, 'Michael', 'Jordan', 2, 2)
ON DUPLICATE KEY UPDATE
  first_name = VALUES(first_name),
  last_name = VALUES(last_name),
  roles_id = VALUES(roles_id),
  manager_id = VALUES(manager_id);

INSERT INTO employees (id, first_name, last_name, roles_id, manager_id)
VALUES
(3, 'Paul', 'Pierce', 3, 3)
ON DUPLICATE KEY UPDATE
  first_name = VALUES(first_name),
  last_name = VALUES(last_name),
  roles_id = VALUES(roles_id),
  manager_id = VALUES(manager_id);

INSERT INTO department (department_name, roles_id)
VALUES
('Inventory', 1),
('Shipping', 2),
('Receiving', 3);

INSERT INTO roles (title, salary, department_id)
VALUES
('Inventory Manager', 65000, 1),
('Shipping Clerk', 40000, 2),
('Receiving Clerk', 40000, 3);