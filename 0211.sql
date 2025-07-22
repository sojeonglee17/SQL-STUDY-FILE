-- select film_id,title,length
-- from film
-- where length=(
-- 	select min(length) from film);

-- show columns from customer
-- select customer_id,first_name,last_name
-- from customer
-- where reward_points=(
-- 	select max(reward_points) from customer)

-- select f.title,f.length
-- from film f
-- where length in (
-- 	select length
--     from film
--     where length >avg(length))

-- select distinct f.title
-- from film f
-- join inventory i on f.film_id =i.film_id
-- join rental r on i.inventory_id=r.inventory_id
-- where r.customer_id in (
-- 	select customer_id from customer where year(create_date)=2006);

-- select f
-- from rental f
-- where
-- join customer c on
-- join film f on
-- where rental in(
-- 	select rental_date,count(*) as cnt
--     from rental
--     where cnt(rental_date)>20
-- )


/*
1)film테이블
2)다른 영화보다 대여료가 비싼->all*/

-- select rental_rate,title
-- from film
-- where rental_rate > all(
-- 	select rental_rate from film where rental_rate
--     >(select avg(rental_rate) from film)
-- );

select first_name,last_name
from customer c
where exists(
	select 1
    from rental r
    where c.customer_id=r.customer_id
);

//✨
select title
from film f
where exists(
	select 1#존재여부 확인 아무 번호나 사용해도 됨
	from inventory i
    join rental r on i.inventory_id = r.inventory_id
    where f.film_id = i.film_id
);