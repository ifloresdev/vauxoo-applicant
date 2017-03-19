-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id SERIAL NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee_department (
    id SERIAL NOT NULL,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE employee ADD COLUMN department_id INTEGER;

ALTER TABLE employee ADD CONSTRAINT fk_department_has_employees
FOREIGN KEY (department_id)
REFERENCES employee_department (id);

INSERT INTO employee_department (name, description) VALUES
    ('department1', 'description1'),
    ('department2', 'description2'),
    ('department3', 'description3'),
    ('department4', 'description4'),
    ('department5', 'description5'),
    ('department6', 'description6');

INSERT INTO employee (first_name, last_name, department_id) VALUES
    ('employee1', 'last_name1', 1),
    ('employee2', 'last_name2', 2),
    ('employee3', 'last_name3', 3),
    ('employee4', 'last_name4', 4);

CREATE TABLE employee_hobby (
    id SERIAL NOT NULL,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee_practices (
    employee_id INTEGER REFERENCES employee (id) NOT NULL,
    hobby_id INTEGER REFERENCES employee_hobby (id) NOT NULL,
    PRIMARY KEY (employee_id, hobby_id)
);

INSERT INTO employee_hobby (name, description) VALUES
    ('hobby1', 'hobby_description1'),
    ('hobby2', 'hobby_description2'),
    ('hobby3', 'hobby_description3');

INSERT INTO employee_practices (employee_id, hobby_id) VALUES
    (1, 1), (1, 2),
    (2, 2), (2, 3),
    (3, 3), (3, 1),
    (4, 1), (4, 2);
