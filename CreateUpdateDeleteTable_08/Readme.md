
# Employee Table SQL Operations

## Project Description
This project demonstrates basic SQL operations using a test database and the `employee` table. We will:
1. Create an `employee` table with specified columns.
2. Populate it with 50 rows of mock data generated via Mockaroo.
3. Perform various `UPDATE` operations based on each column.
4. Perform various `DELETE` operations based on each column.

## Table Creation
The `employee` table is created with the following structure:
- **id**: Integer, primary key.
- **name**: String, 50 characters max.
- **birthday**: Date.
- **email**: String, 100 characters max.

```sql
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
```

## Step 1: Data Insertion
Using [Mockaroo](https://www.mockaroo.com/), we generated 50 mock entries for the `employee` table with realistic values for each column.

### Example Insert Statement
```sql
INSERT INTO employee (id, name, birthday, email) VALUES 
(1, 'John Doe', '1990-01-15', 'johndoe@example.com'),
(2, 'Jane Smith', '1985-07-30', 'janesmith@example.com'),
-- Additional 48 records here
;
```

## Step 2: Update Operations

Below are five sample `UPDATE` queries to modify the `employee` table based on various columns.

### Update by ID
Update the `name` of the employee with a specific `id`.

```sql
UPDATE employee
SET name = 'Updated Name'
WHERE id = 1;

-- Example Result:
-- Employee with ID 1 now has name 'Updated Name'
```

### Update by Name
Update the `email` based on a specific `name`.

```sql
UPDATE employee
SET email = 'updated_email@example.com'
WHERE name = 'Jane Smith';

-- Example Result:
-- Employee 'Jane Smith' now has email 'updated_email@example.com'
```

### Update by Birthday
Update the `name` for employees born on a certain date.

```sql
UPDATE employee
SET name = 'Updated Birthday Name'
WHERE birthday = '1985-07-30';

-- Example Result:
-- Employee(s) born on '1985-07-30' now have the name 'Updated Birthday Name'
```

### Update by Email
Update the `birthday` for an employee with a specific `email`.

```sql
UPDATE employee
SET birthday = '1992-05-10'
WHERE email = 'johndoe@example.com';

-- Example Result:
-- Employee with email 'johndoe@example.com' now has a birthday of '1992-05-10'
```

### Update with Conditional ID Range
Update the `name` for employees with IDs within a specific range.

```sql
UPDATE employee
SET name = 'Range Update'
WHERE id BETWEEN 10 AND 20;

-- Example Result:
-- Employees with IDs between 10 and 20 now have name 'Range Update'
```

## Step 3: Delete Operations

Here are five sample `DELETE` queries to remove records based on each column.

### Delete by ID
Delete an employee with a specific `id`.

```sql
DELETE FROM employee
WHERE id = 50;

-- Example Result:
-- Employee with ID 50 is deleted.
```

### Delete by Name
Delete employees with a certain `name`.

```sql
DELETE FROM employee
WHERE name = 'Sample Name';

-- Example Result:
-- All employees with the name 'Sample Name' are deleted.
```

### Delete by Birthday
Delete employees born on a specific date.

```sql
DELETE FROM employee
WHERE birthday = '1990-01-15';

-- Example Result:
-- Employees born on '1990-01-15' are deleted.
```

### Delete by Email
Delete an employee with a specific `email`.

```sql
DELETE FROM employee
WHERE email = 'janesmith@example.com';

-- Example Result:
-- Employee with email 'janesmith@example.com' is deleted.
```

### Delete with Conditional ID Range
Delete employees with IDs within a certain range.

```sql
DELETE FROM employee
WHERE id BETWEEN 5 AND 10;

-- Example Result:
-- Employees with IDs from 5 to 10 are deleted.
```

---

## License
This project is licensed under the MIT License.
