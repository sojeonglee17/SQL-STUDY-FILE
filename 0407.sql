select customer_id,first_name,last_name,
		row_number() over(order by create_date) as signup_rank
from customer;

select payment_id,customer_id,amount,
	row_number() over(order by amount desc) as payment_rank
from payment;

select film_id,title,length,
	dense_rank() over(order by length desc) as length_dense_rank
from film;

select film_id,title,length,
	row_number() over(order by length desc) as length_rank
from film;

select dayname(payment_date) as payment_day,
		sum(amount) as total_revenue,
        rank() over (order by sum(amount) desc) as revenue_rank
from payment
group by payment_day
order by total_revenue desc;


select customer_id,payment_id,amount,
		sum(amount) over(partition by customer_id order by payment_date)
         as running_total
from payment;


select f.film_id,f.title,
		count(*) as rental_count,
        rank() over(order by count(*) desc) as rental_rank
from film f
	join inventory i on f.film_id=i.film_id
    join rental r on r.inventory_id=i.inventory_id
group by f.title,f.film_id
order by rental_count desc
limit 1;

select customer_id,
	case
		when mod(customer_id,2) = 0 then 'Even'
        else 'Odd'
	end as id_type
from customer;

select title,length,
	case
		when length >=120 then 'Long'
        else 'Short'
	end as film_type
from film;

select rental_id,rental_date,
	case 
		when year(rental_date) >= 2006 then '2006'
        when year(rental_date) >=2005 then '2005'
        else 'Other'
    end as rental_year_group
from rental;

select title,rating,
	case
		when rating = 'PG' or rating ='G' then 'Family'
        when rating = 'PG-13' or rating = 'R' then 'Teen+'
        else 'Unknown'
	end as rating_group
from film;

select title,rating,
	case
		when rating in ('G','PG') then 'Family'
        when rating in ('PG-13','R') then 'Teen+'
        else 'Unknown'
	end as rating_group
from film;


select title, length,
	CASE
		WHEN length >=60 THEN 'Feature'
        ELSE 'Short'
	END as type_label
from film;


select payment_id,amount,
	CASE
		WHEN amount >=6 then 'High'
        WHEN amount >=3 then 'Mid'
        ELSE 'Low'
	END AS level
from payment;


select customer_id,
	CASE
		WHEN mod(customer_id,5) = 0 then 'Group 0'
        WHEN mod(customer_id,5) = 1 then 'Group 1'
        ELSE 'Other'
	END AS group_label
from customer;


select staff_id,first_name,
	CASE
		WHEN store_id = 1 then concat('강남점 - ',first_name)
        WHEN store_id = 2 then concat('홍대점 - ',first_name)
        Else concat('기타지점 - ',first_name)
	End as name_tag
from staff;