CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

--Step 1: Data Insertion
-- Using Mockaroo, we generated 50 mock entries for the employee table with realistic values for each column.

-- Example Insert Statement
INSERT INTO employee (id, name, birthday, email) VALUES 
(1, 'John Doe', '1990-01-15', 'johndoe@example.com'),
(2, 'Jane Smith', '1985-07-30', 'janesmith@example.com'),
-- Additional 48 records here
;


-- Step 2: Update Operations
-- Below are five sample UPDATE queries to modify the employee table based on various columns.

--Update by ID
--Update the name of the employee with a specific id.

UPDATE employee
SET name = 'Updated Name'
WHERE id = 1;

-- Example Result:
-- Employee with ID 1 now has name 'Updated Name'

-- Update by Name
-- Update the email based on a specific name.
UPDATE employee
SET email = 'updated_email@example.com'
WHERE name = 'Jane Smith';

-- Example Result:
-- Employee 'Jane Smith' now has email 'updated_email@example.com'

-- Update by Birthday
--Update the name for employees born on a certain date.
UPDATE employee
SET name = 'Updated Birthday Name'
WHERE birthday = '1985-07-30';

-- Example Result:
-- Employee(s) born on '1985-07-30' now have the name 'Updated Birthday Name'

--Update by Email
-- Update the birthday for an employee with a specific email.

UPDATE employee
SET birthday = '1992-05-10'
WHERE email = 'johndoe@example.com';

-- Example Result:
-- Employee with email 'johndoe@example.com' now has a birthday of '1992-05-10'

-- Update with Conditional ID Range
-- Update the name for employees with IDs within a specific range.

UPDATE employee
SET name = 'Range Update'
WHERE id BETWEEN 10 AND 20;

-- Example Result:
-- Employees with IDs between 10 and 20 now have name 'Range Update'

-- Step 3: Delete Operations
-- Here are five sample DELETE queries to remove records based on each column.

--Delete by ID
-- Delete an employee with a specific id.

DELETE FROM employee
WHERE id = 50;

-- Example Result:
-- Employee with ID 50 is deleted.

-- Delete by Name
-- Delete employees with a certain name.
DELETE FROM employee
WHERE name = 'Sample Name';

-- Example Result:
-- All employees with the name 'Sample Name' are deleted.

--Delete by Birthday
-- Delete employees born on a specific date.
DELETE FROM employee
WHERE birthday = '1990-01-15';

-- Example Result:
-- Employees born on '1990-01-15' are deleted.

--Delete by Email
-- Delete an employee with a specific email.
DELETE FROM employee
WHERE email = 'janesmith@example.com';

-- Example Result:
-- Employee with email 'janesmith@example.com' is deleted.

-- Delete with Conditional ID Range
-- Delete employees with IDs within a certain range.
DELETE FROM employee
WHERE id BETWEEN 5 AND 10;

-- Example Result:
-- Employees with IDs from 5 to 10 are deleted.





