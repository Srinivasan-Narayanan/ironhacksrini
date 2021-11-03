USE sakila;
#1. How many copies of the film Hunchback Impossible exist in the inventory system?
SELECT film.title, count(inventory.film_id) 
FROM inventory
inner join film
ON inventory.film_id = film.film_id
where title in ('Hunchback Impossible');

SELECT 'Hunchback Impossible' as film, count(film_id) as copies
FROM inventory
where film_id in (SELECT film_id
FROM film
where title in ('Hunchback Impossible'));


#2. List all films whose length is longer than the average of all the films.
select title, length from film
where length > (
  select avg(length)
  from film
)
order by length;

# 3. Use subqueries to display all actors who appear in the film Alone Trip.
#select title from film where title in ('Alone Trip')
select concat(first_name, " ", last_name) as actors_in_movie_Alone_Trip 
from actor
where actor_id in (select fa.actor_id as Actors_in_Alone_Trip
from film_actor fa
join film f
on fa.film_id = f.film_id
where f.title in ('Alone Trip'));

# 4. Sales have been lagging among young families, and 
# you wish to target all family movies for a promotion. 
# Identify all movies categorized as family films.

select title as list_of_family_movies from film where film_id in (
select film_id from film_category where category_id in (
select category_id from category where name in ('family'))); 
# output had returned 69 movies

# 5. Get name and email from customers from Canada using subqueries. 
# Do the same with joins. Note that to create a join, you will have to identify the correct 
# tables with their primary keys and foreign keys, that will help you get the relevant information.

select concat(first_name, ' ', last_name) as Name_of_canadian_Customers, email as Email_of_canadian_Customers
from customer
where customer.address_id in (select address_id 
from address 
where address.city_id in 
(select city_id 
from city 
where city.country_id in 
(select country_id 
from country 
where country.country in ('canada'))));

# Query 6
# Which are films starred by the most prolific actor? 
# Most prolific actor is defined as the actor that has acted in the most number of films. 
# First you will have to find the most prolific actor and then use that actor_id 
# to find the different films that he/she starred.
# solution:
# create a temporary table to fetch the profi actor id with limit 1 and 
# fetch the list of film_ids and then the titles with 2 subqueries. 
# temp table
create temporary table profi_actor
select actor_id, count(film_id)
from film_actor
group by actor_id
order by count(film_id) desc limit 1;

# query with subquery
select title as movies_list_of_Profi_actor
from film
where film_id in (select film_id
from film_actor
where actor_id in (select actor_id from profi_actor));

# query 7
# Films rented by most profitable customer. 
# You can use the customer table and payment table to find the most profitable customer 
# ie the customer that has made the largest sum of payments

create temporary table profitable_cust
select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc limit 1;

# movies_list_of_Profitable_customer
# query with subquery
select title as list_of_movies_rented_by_profitable_customers, film_id
from film
where film_id in 
(select film_id
from inventory
where inventory_id in (select inventory_id
from rental
where customer_id in (select customer_id from profitable_cust)));

# the customer had rented 45 times, 
# but the record returned is 44 as he borrowed film_id 966, wedding apollo twice

# Query 8
# Customers who spent more than the average payments.