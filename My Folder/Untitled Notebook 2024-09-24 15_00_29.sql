-- Databricks notebook source
create table employees(id int, name string, salary double)

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

select * from employees;



-- COMMAND ----------



-- COMMAND ----------

describe detail employee

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

-- MAGIC %fs ls 'abfss://unity-catalog-storage@dbstoragewngm7gwrybd3k.dfs.core.windows.net/2981131244454502/__unitystorage/catalogs/5ce11d02-e7d5-45f7-89c5-54da75c75a66/tables/96642f4e-79ec-4137-a170-12c41ee34062'

-- COMMAND ----------

-- MAGIC %fs ls

-- COMMAND ----------

-- MAGIC %fs ls 'abfss://unity-catalog-storage@dbstoragewngm7gwrybd3k.dfs.core.windows.net/2981131244454502/__unitystorage/catalogs/5ce11d02-e7d5-45f7-89c5-54da75c75a66/tables/96642f4e-79ec-4137-a170-12c41ee34062'

-- COMMAND ----------

-- MAGIC %fs ls 'demoworkspace.default.employees'

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

select * from information_schema.catalogs

-- COMMAND ----------

select * from information_schema.schemata

-- COMMAND ----------

select * from information_schema.tables

-- COMMAND ----------

UPDATE employees 
SET salary = salary + 100
WHERE name LIKE "A%"

-- COMMAND ----------

describe detail employees
