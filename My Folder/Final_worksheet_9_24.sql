-- Databricks notebook source
create table employees(id int, name string, salary double)

-- COMMAND ----------

select * from employees

-- COMMAND ----------

INSERT INTO employees
VALUES 
  (1, "Adam", 3500.0),
  (2, "Sarah", 4020.5);

INSERT INTO employees
VALUES
  (3, "John", 2999.3),
  (4, "Thomas", 4000.3);

INSERT INTO employees
VALUES
  (5, "Anna", 2500.0);

INSERT INTO employees
VALUES
  (6, "Kim", 6200.3)


-- COMMAND ----------

select * from employees

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

UPDATE employees 
SET salary = salary + 100
WHERE name LIKE "A%"

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees/_delta_log'

-- COMMAND ----------

describe history employees

-- COMMAND ----------

SELECT * FROM employees VERSION AS OF 4

-- COMMAND ----------

select * from employees

-- COMMAND ----------

select * from employees as of v4

-- COMMAND ----------

select * from employees@v4

-- COMMAND ----------

describe history employees

-- COMMAND ----------

select * from employees@v6

-- COMMAND ----------

restore table employees@v4

-- COMMAND ----------

drop table employees

-- COMMAND ----------

select * from employees

-- COMMAND ----------

restore table employees

-- COMMAND ----------

undrop table employees

-- COMMAND ----------

select * from employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

select * from employees@v1

-- COMMAND ----------

select * from employees@v2

-- COMMAND ----------

delete from employees

-- COMMAND ----------

restore table employees@v4

-- COMMAND ----------

restore table employees@v3

-- COMMAND ----------

restore table employees as of version 4

-- COMMAND ----------

restore table employees to version@v4

-- COMMAND ----------

restore table employees to version as of 4

-- COMMAND ----------

select * from employees

-- COMMAND ----------

describe history employees 

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

optimize employees zorder by id

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

vacuum employees

-- COMMAND ----------


