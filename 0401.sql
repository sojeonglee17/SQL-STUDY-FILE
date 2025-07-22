/*Q1~Q5*/
select title,
		ROW_NUMBER() over (order by title) as title_rank
from film;

select customer_id,amount,
		avg(amount) over (partition by customer_id) as avg_amount
from payment;

select title,length,rank() over (order by length)  as length_rank
from film;

select customer_id,payment_date,amount,
		sum(amount) over(partition by customer_id order by payment_date) as cumulative_amount
from payment;

select customer_id,rental_id,
		row_number() over (partition by customer_id order by rental_date) as rental_order
from rental;

select payment_id,customer_id,amount,
	row_number() over (order by amount desc) as payment_rank
from payment;

select payment_id,customer_id,amount,
	rank() over (order by amount desc) as payment_rank
from payment;