-- select abs(amount-5) as absolute_difference 
-- from payment;

-- select rental_id,abs(rental_id-100) as rental_diff
-- from rental;

-- select round(amount,1) as rounded_payment
-- from payment;

-- select ceil(length) as ceiled_length
-- from film;

-- select customer_id,mod(customer_id,2) as remainer
-- from customer;

-- select title,length,mod(length,60) as remainig_minutes
-- from film;

-- select title,power(length,2) as squared_length
-- from film;

-- select rental_id,sqrt(rental_id) as sqrt_rental
-- from rental;

select payment_id,round(amount,1) as rounded_amount
from payment;

select title,abs(length) as absolute_length
from film;

select customer_id,power(customer_id,2) as squared_id
from customer;

select payment_id,amount,mod(amount,10) as remainder
from payment;

select max(length) as max_length,
		power(max(length),2) as squared_max_length
from film;


select title,floor(length) as floored_length
from film;

select customer_id,mod(customer_id,3)
from customer;

select payment_id,ceil(amount) as ceiled_amount
from payment;

select title,round(length,2) as rounded_length
from film;

select payment_id,power(amount,3) as squared_amount
from payment;

select payment_id,customer_id,amount,
		row_number() over (order by amount desc) as payment_rank
from payment;


select film_id,title,length,
		dense_rank() over (order by length desc) as length_rank
from film;

select customer_id,rental_id,
		avg(rental_id) over (partition by customer_id order by rental_id) as avg_rentals
from rental;

select payment_id,customer_id,amount,
		rank() over (order by amount desc) as payment_rank
from payment;

select dayname(payment_date) as payment_day,
		sum(amount) as total_revenue,
		rank() over (order by sum(amount) desc) as revenue_rank
from payment
group by payment_day
order by total_revenue desc;

/*과제*/
