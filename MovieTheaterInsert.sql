----Insert data
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	billing_info
) VALUES(
	2,
	'Bill',
	'Billiams',
	'1632 5472 2232 1122 435 05/21'
);


INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	billing_info
) VALUES(
	1,
	'Mary',
	'Stevenson',
	'1564-2345-2232-1111 623 05/20'
);

INSERT INTO concessions(
	order_id,
	food_type,
	order_price
) VALUES(
	527,
	'Soda',
	'7.99'
);

INSERT INTO concessions(
	order_id,
	food_type,
	order_price
) VALUES(
	524,
	'Popcorn',
	'10.99'
);

INSERT INTO movie(
	movie_id,
	movie_title,
	movie_date,
	movie_time
) VALUES(
	721,
	'Saving Silverman',
	2022-02-05,
	05:32
);

INSERT INTO movie(
	movie_id,
	movie_title,
	movie_date,
	movie_time
) VALUES(
	722,
	'Forgetting Sarah Marshall',
	2022-02-06,
	05:32
);

INSERT INTO order_(
	order_id,
	total_cost,
	purchase_date
) VALUES(
	354,
	12.99,
	2022-05-24
);

INSERT INTO order_(
	order_id,
	total_cost,
	purchase_date
) VALUES(
	355,
	15.00,
	2022-05-23
);

INSERT INTO ticket(
	ticket_id,
	total_cost,
	purchase_date
) VALUES(
	399,
	25.00,
	2022-05-27
);


INSERT INTO ticket(
	ticket_id,
	total_cost,
	purchase_date
) VALUES(
	397,
	38.00,
	2022-05-26
);

