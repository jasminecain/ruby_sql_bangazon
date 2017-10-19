CREATE TABLE `Computers` (
	`computer_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`purchase_date`	TEXT NOT NULL,
	`decomission_date`	TEXT NOT NULL,
	`employee_id`	TEXT NOT NULL
),

CREATE TABLE `Customers` (
	`customer_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`first_name`	TEXT NOT NULL,
	`last_name`	TEXT NOT NULL,
	`date_account_created`	TEXT NOT NULL,
	`product_id`	INTEGER NOT NULL,
	`order_id`	TEXT NOT NULL,
	`active`	INTEGER NOT NULL,
	`last_date_used`	INTEGER
),

CREATE TABLE `Departments` (
	`department_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`expense_budget`	TEXT NOT NULL,
	`supervisor`	TEXT NOT NULL,
	`employee_type_id`	TEXT NOT NULL,
	`employee_ids`	TEXT NOT NULL
),

CREATE TABLE `Employee Types` (
	`employee_type_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`employee_type`	TEXT NOT NULL
),

CREATE TABLE `Employees` (
	`employee_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`name_last`	TEXT NOT NULL,
	`name_first`	TEXT NOT NULL,
	`job_title`	TEXT NOT NULL,
	`employee_type_id`	TEXT NOT NULL,
	`computer_id`	TEXT NOT NULL,
	`department_id`	TEXT NOT NULL,
	`training_program_ids`	TEXT NOT NULL
),

CREATE TABLE `Orders` (
	`order_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`product_id`	TEXT NOT NULL,
	`customer_id`	TEXT NOT NULL,
	`payment_type_id`	TEXT NOT NULL,
	`fulfilled`	TEXT NOT NULL
),

CREATE TABLE `Payment Types` (
	`payment_type_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`payment_type`	TEXT NOT NULL,
	`customer_id`	TEXT NOT NULL,
	`account_number`	TEXT NOT NULL
),

CREATE TABLE `Product Types` (
	`product_type_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`product_type`	TEXT NOT NULL
),

CREATE TABLE `Products` (
	`product_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`product_type`	TEXT NOT NULL,
	`product_price`	TEXT NOT NULL,
	`product_description`	TEXT NOT NULL,
	`product_type_id`	TEXT NOT NULL,
	`customer_id`	TEXT NOT NULL
),

CREATE TABLE `Training Programs` (
	`program_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`start_date`	TEXT NOT NULL,
	`end_date`	TEXT NOT NULL,
	`instructor`	TEXT NOT NULL,
	`max_occupancy`	TEXT NOT NULL,
	`employee_id`	TEXT NOT NULL
)
