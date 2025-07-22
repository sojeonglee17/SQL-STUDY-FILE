select first_name,last_name,create_date
from customer
where create_date=(
	select min(create_date)
	from customer
);

select title,length
from film
where length=(
	select min(length)
    from film
);


with my_cte as (
	select first_name,last_name,email
    from customer
    where email like '%gmail.com'
)
select *
from my_cte
;

select lower(title) as lower_film_title
from film;

select concat(title,'(길이:',length,'분)') info_film
from film;

select substring(first_name,1,3)
from customer;


select rental_date
from rental
where day(rental_date)=curdate();

select payment_id,amount,mod(amount,10) as remainder
from payment;


select max(length) as max_length,power(max(length),2)as squared_max_length
from film;

select customer_id,
	case 
		when mod(customer_id,2)=1 THEN 'ODD'
        ELSE 'EVEN'
        END AS id_type
from customer;
    

select first_name
from customer
where create_date=(
	select max(create_date)
    from customer
);


select title,length
from film
where length=(
	select max(length)
	from film
);

select title,length
from film
where length>(
	select avg(length)
    from film
);


with my_cte as (
select first_name,last_name,create_date
from customer
where year(create_date) =2006 
)

select *
from my_cte;

select title,length,
	case
		when length<60 then 'Short'
        else 'Feature'
	end as type_label
from film;


select staff_id,first_name,
	case
		when store_id = 1 then concat('강남점-',first_name)
        when store_id = 2 then concat('홍대점-',first_name)
        else concat('기타지점-',first_name)
	end as name_tag
from staff;


select rental_id,
	case
		when mod(rental_id,3)=0 then 'A'
        when mod(rental_id,3)=1 then 'B'
        else 'C'
	end as group_code
from rental;