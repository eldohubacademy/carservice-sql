## SQL Queries

**Understanding the Basics**

Let's start with some fundamental SQL queries that will help you retrieve information from your database.

### Selecting Data

- **Selecting all columns from a table:**
  ```sql
  SELECT * FROM your_table_name;
  ```
- **Selecting specific columns:**
  ```sql
  SELECT column1, column2 FROM your_table_name;
  ```

### Filtering Data

- **Using the WHERE clause:**
  ```sql
  SELECT * FROM your_table_name WHERE condition;
  ```
  For example, to find all clients whose age is greater than 30:
  ```sql
  SELECT * FROM clients WHERE age > 30;
  ```

### Sorting Data

- **Using the ORDER BY clause:**
  ```sql
  SELECT * FROM your_table_name ORDER BY column_name ASC;  -- Ascending order
  ```
  ```sql
  SELECT * FROM your_table_name ORDER BY column_name DESC; -- Descending order
  ```

### Counting Rows

- **Using the COUNT function:**
  ```sql
  SELECT COUNT(*) FROM your_table_name;
  ```

**Example Queries Using Your Car Servicing App Database**

1. **Find all clients from Nairobi:**
   ```sql
   SELECT * FROM clients WHERE address LIKE '%Nairobi%';
   ```
2. **List all vehicles owned by John Doe:**
   ```sql
   SELECT * FROM vehicles WHERE owner_id = (SELECT id_number FROM clients WHERE full_name = 'John Doe');
   ```
3. **Count the number of bookings for each mechanic:**
   ```sql
   SELECT mechanic_id, COUNT(*) AS total_bookings FROM bookings GROUP BY mechanic_id;
   ```

**Practice makes perfect!** Experiment with different queries and explore the possibilities of SQL.
