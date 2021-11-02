
# 1 Which actor has appeared in the most films?
select actor_id, count(film_id) from film_actor group by actor_id order by count(film_id) desc limit 1;
# output actor_id: 107; count (film_id) is 42


# 2. Most active customer (the customer that has rented the most number of films)
select customer_id, count(rental_id) from payment group by customer_id order by count(rental_id) desc limit 1;
# output customer_id: 148; count (rental_id) is 46

# 3. List number of films per category.
# output 24 records 74 max for id 15 and 51 min for id 12

# 4. Display the first and last names, as well as the address, of each staff member.
select staff.first_name, staff.last_name, address.address
from staff 
inner join address
on staff.address_id = address.address_id;
# output Mike	Hillyer	23 Workhaven Lane
#		Jon	Stephens	1411 Lillydale Drive

# 5. Display the total amount rung up by each staff member in August of 2005.
SELECT staff.first_name, staff.last_name, SUM(amount)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY payment.staff_id
ORDER BY last_name ASC;

#6. List each film and the number of actors who are listed for that film.
SELECT title, count(actor_id)
FROM film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
GROUP BY film.film_id;

# 7. Using the tables payment and customer and the JOIN command, list the total paid by each customer. 
# List the customers alphabetically by last name. Bonus: Which is the most rented film? 
# The answer is Bucket Brotherhood This query might require using more than one join statement. Give it a try.
SELECT last_name, sum(amount)
FROM payment
inner join customer
ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id
order by last_name asc;
