CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

CREATE TABLE purchase_order(
	po_num SERIAL PRIMARY KEY,
	po_date date,
	price numeric(15),
	description VARCHAR(150),
	customer_id numeric(15)
);

CREATE TABLE mechanic(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE salesperson(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);


CREATE TABLE invoice(
	invoice_num SERIAL PRIMARY KEY,
	description VARCHAR(150),
	price numeric(15),
	vin_num numeric(15),
	customer_id numeric(15)
);

CREATE TABLE car(
	customer_id SERIAL PRIMARY KEY,
	vin_num numeric(15),
	car_make VARCHAR(150),
	car_model VARCHAR(150)
);




