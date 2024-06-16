-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create salaries table
CREATE TABLE salaries (
    employee_id INT,
    salary DECIMAL(10, 2),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (employee_id, from_date),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Insert data into departments
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Finance');

-- Insert data into employees
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date) VALUES
(101, 'kiran', 'rao', 2, '2022-06-15'),
(102, 'jashmith', 'Shetty', 1, '2023-01-10'),
(103, 'vivek', 'reddy', 3, '2021-09-23'),
(104, 'vijay', 'kamal', 4, '2022-12-01'),
(105, 'sai', 'kishore', 2, '2020-03-14');

-- Insert data into salaries
INSERT INTO salaries (employee_id, salary, from_date, to_date) VALUES
(101, 70000.00, '2022-06-15', '9999-01-01'),
(102, 65000.00, '2023-01-10', '9999-01-01'),
(103, 72000.00, '2021-09-23', '9999-01-01'),
(104, 68000.00, '2022-12-01', '9999-01-01'),
(105, 75000.00, '2020-03-14', '9999-01-01');
