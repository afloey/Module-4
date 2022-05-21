--1. List all customers who live in Texas (use JOINs)

SELECT *
FROM address;

SELECT *
FROM address
ORDER BY district ASC;

SELECT *
FROM address
WHERE district = 'Texas';


SELECT customer.first_name, customer.last_name, district
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
WHERE district = 'Texas';

--2. Get all payments above $6.99 with the Customer's Full Name

SELECT customer.first_name, customer.last_name, amount
from customer 
full join payment 
on customer.customer_id = payment.customer_id 
where amount > 6.99


--3. Show all customers names who have made payments over $175(use subqueries)
SELECT *
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
);

--4. List all customers that live in Nepal (use the city table)
select * from city

SELECT customer.first_name, customer.last_name, country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

--5. Which staff member had the most transactions? Mike Hillyer

select staff_id, first_name, last_name
from staff 
where staff_id in (
	select staff_id
	from payment 
	group by staff_id
	order by sum(amount) desc
)
group by staff_id, first_name, last_name;

--6. How many movies of each rating are there? G- 179, PG-194 , PG- 13- 223, R-195 , NC-17- 209


select count(rating)
from film 
where rating = 'G';

select count(rating)
from film 
where rating = 'PG';

select count(rating)
from film 
where rating = 'PG-13';

select count(rating)
from film 
where rating = 'R';

select count(rating)
from film 
where rating = 'NC-17';



--7. Show all customers who have made a single payment above $6.99 (Use Subqueries)

select amount, first_name, last_name
from customer 
where customer_id in (
	select amount
	from payment 
	where amount > 6.99
	group by customer_id 
	order by amount desc
)
group by customer_id, first_name, last_name;


--8.  How many free rentals did our stores give away? 23
SELECT amount
from customer 
full join payment 
on customer.customer_id = payment.customer_id 
where amount = 0.00








