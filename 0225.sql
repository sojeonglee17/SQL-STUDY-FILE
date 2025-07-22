-- select title from film
-- where rental_rate > any (
-- 	select rental_rate from film
-- );

/*각 영화의 평균 대여 기간보다 긴 대여 기간을 가진 영화들을 찾기*/
-- select title, rental_duration
-- from film,(
-- 	select avg(rental_duration) as avg_duration from film) as avg_table
--     /*새로운 테이블을 만들어준 상태*/
-- where film.rental_duration> avg_table.avg_duration;


/*rental테이블에서 총 대여건수*/
select count(*) as total_rentals from rental;
/*film 테이블에서 영화의 총 개수*/
select count(*) as total_films from film;

select sum(amount) as total_revenue from payment;
select sum(length) as total_length from film;

select avg(length) as avg_film_length from film;

select max(length) as film_max_length,min(length) as film_min_length
from film;

/*Q1*/
select count(*) as total_customer from customer;

/*Q2,Q3*/
select avg(length) as avg_film_length from film;

select customer_id,amount from payment;
select count(customer_id) as Customer_ID,
		sum(amount) as total_customer_payment from payment
group by customer_id
order by Customer_id,total_customer_payment desc;

select title,rental_id
from rental
	inner join customer as c on c.customer_id =rental.customer_id
    inner join film as f on f.