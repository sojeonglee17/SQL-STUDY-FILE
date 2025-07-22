-- with my_cte as(
-- 	select first_name, last_name From actor
-- )
-- select *
-- From my_cte
-- ;


/*Q1.customer 테이블에서 고객의 이름과 이메일을 가져오는 CTE*/
-- With customer_info as (
-- 	select first_name,last_name,email from customer
--     )

-- select *
-- From customer_info;

/*Q2*/
-- with film_length as (
-- 	select title,length
--     from film
-- )
-- select *
-- from film_length;

/*CTE 조건 추가*/
-- with short_films as(
-- 	select title,length
--     from film
--     where length < 60
-- )

-- select *
-- from short_films;

/*Q3*/
with customer_email as(
	select first_name,last_name,customer_id,email
    from customer
    where email like '%gmail.com')
    
select *
from customer_email;

/*Q4*/

-- with film_length as(
-- 	select title,length
--     from film
--     where length >=120
--     order by length)
-- select *
-- from film_length;

-- with customer_SMITH as(
-- 	select first_name, last_name,email
--     from customer
--     where last_name = 'SMITH'
-- )
-- select *
-- from customer_SMITH;


-- with film_rental_movie as(
-- 	select distinct f.title,f.film_id
--     from rental r
--     join inventory i on i.inventory_id=r.inventory_id
--     join film f on i.film_id=f.film_id
-- )
-- select *
-- from film_rental_movie;

-- with film_length as(
-- 	select title, length
--     from film
--     where length >=150
-- )
-- select*
-- from film_length;

-- with customer_rental_count as(
-- 	select distinct f.title,r.inventory_id as rental_count 
--     from rental r
-- 		join inventory i on i.inventory_id = r.inventory_id
-- 		join film f on f.film_id =i.film_id
--     where r.inventory_id >=10
--     group by r.inventory_id
-- )
-- select *
-- from customer_rental_count;


/*날짜 함수*/

select curdate() as today,now() as current_datetime;

-- select customer_id,datediff(curdate(),create_date) as date_distance
-- from customer;

-- select *
-- from rental
-- where date(rental_date) = curdate();

select year('2025-02-10')as year_part,
		month('2025-02-10') as month_part,
        day('2025-02-10') as day_part;


select year(rental_date) as rental_year
from rental;

select *
from customer
where month(create_date)= 1;