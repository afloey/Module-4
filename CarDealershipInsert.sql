insert into customer(customer_id,first_name,last_name,billing_info)
values(1,'Bill','Billiams','2255 3322 1154 2235 01/22 345');

insert into customer(customer_id,first_name,last_name,billing_info)
values(2,'Wanda','Sykes','3222 1224 1154 2235 02/22 332');


CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _billing_info VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id,first_name,last_name,billing_info)
	VALUES(_customer_id, _first_name, _last_name, _billing_info);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_customer(3,'Kenneth', 'Parcell','1222 3344 5568 7780 02/23 355');

SELECT *
FROM customer
WHERE customer_id = 3;


insert into mechanic(employee_id,first_name,last_name)
values(55,'Bob','Bobson');

insert into mechanic(employee_id,first_name,last_name)
values(56,'Steve','Stevenson');


CREATE OR REPLACE FUNCTION add_mechanic(_employee_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO mechanic(employee_id,first_name,last_name)
	VALUES(_employee_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_mechanic(58,'Pete', 'Hornberger');

SELECT *
FROM mechanic
WHERE employee_id = 58;

insert into purchase_order(po_num,po_date, price, description,customer_id)
values(100,'2022-05-23','100.00', 'Tire rotation', 1);

insert into purchase_order(po_num,po_date, price, description,customer_id)
values(101,'2015-03-15','75.00', 'oil change', 2);

insert into car(customer_id, vin_num, car_make, car_model)
values(3,'555594378924','Chevrolet', 'Cavalier');

insert into car(customer_id , vin_num, car_make, car_model)
values(2,'334859376017','Honda', 'Civic');

insert into invoice(invoice_num,description, price, vin_num,customer_id)
values(300,'sale-new car','20000', '327584961236', 7);

insert into invoice(invoice_num,description, price, vin_num,customer_id)
values(302,'sale-used car','12000', '485903657821', 8);


insert into salesperson(employee_id,first_name,last_name)
values(35,'Tom','Segura');

insert into salesperson(employee_id,first_name,last_name)
values(36,'Patton','Oswalt');





