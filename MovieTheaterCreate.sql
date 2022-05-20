---Create Tables

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	total_cost numeric(10,2),
	purchase_date date
);

CREATE TABLE movie(
	movie_id SERIAL primary key,
	movie_title VARCHAR(150),
	movie_date integer,
	movie_time time
);

CREATE TABLE order_(
	order_id SERIAL primary key,
	total_cost numeric(10,2),
	purchase_date integer,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE concessions(
	order_id SERIAL primary key,
	food_type VARCHAR(150),
	order_price numeric(10,2),
	FOREIGN KEY(total_cost) REFERENCES order(total_cost)
);









