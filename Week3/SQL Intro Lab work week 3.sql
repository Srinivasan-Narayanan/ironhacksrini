#2 selecting all columns from each table or using the in built review features for your client.
select * from bank.account;
select * from bank.card;
select * from bank.client;
select * from bank.disp;
select * from bank.district;
select * from bank.loan;
select * from bank.order;
select * from bank.trans;

#3 Select one column from a table. Get film titles.
select title from sakila.film;

#4 languages
select distinct(name) as Lang from sakila.language;

#5.1 Find out how many stores does the company have?
select count(store_id) from sakila.store;

# 5.2 Find out how many employees staff does the company have?
select staff_id,count(staff_id) from sakila.staff;

#5.3 5.3 Return a list of employee first names only?
select count(first_name) from sakila.staff;
