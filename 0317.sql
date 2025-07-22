-- with rental_vip as
-- 	(select c.first_name,c.last_name,
-- 			c.customer_id,count(r.rental_id) as rental_count
-- 	from rental r
-- 		join customer c on c.customer_id=r.customer_id
-- 	group by c.customer_id,c.first_name,c.last_name
--     order by rental_count DESC
--     limit 10
--     )
-- select *
-- from rental_vip;

-- select first_name
-- from customer
-- where upper(first_name) like 'A%'

-- select title,char_length(title) as title_length
-- from film
-- order by title_length DESC;

-- select concat(title,'(',release_year,')') as title_with_year
-- from film;

-- select title 
-- from film
-- where char_length(title) = 5;


-- select last_name,substring(last_name,1,2) as short_last_name
-- from customer;


-- select concat(lower(title),' - ',length,'분') as film_info
-- from film;

-- select upper(trim(first_name)) as clean_upper_name
-- from customer;

-- select first_name
-- from customer
-- where create_date = (select max(create_date)
-- 					from customer
-- );

-- select title,length
-- from film
-- where length = (
-- 	select max(length) as length
--     from film
--     );


-- select title, length
-- from film
-- where length > (select avg(length) as l
-- 					from film
-- );

-- #3
select f.title as title
-- #2
from film f
    join  inventory i on i.film_id=r.film_id
where i.inventory_id= (
					-- #1 
					select inventory_id,max(rental_date) as rental_count
					from rental
                    group by inventory_id
                    order by count(*) desc
                    limit 1
                    );