

-- select customer_id,avg(amount) as avg_customerpay
-- from payment
-- group by customer_id
-- order by customer_id,avg_customerpay;

-- select dayname(payment_date) as daily,
-- 		sum(amount) as total_payment_date
-- from payment
-- group by daily
-- order by total_payment_date;

-- set SQL_SAFE_UPDATES = 0;
-- Update customer
-- set email = 'unknown@email.com';
-- set sql_safe_updates = 1;

/*문제
1.가장 많이 대여된 영화를 'HOT MOVIE'로 제목을 변경 하세요*/

update film
set title = 'HOT MOVIE'
where film_id = (
	select i.film_id from rental r
	join inventory as i on r.inventory_id=i.inventory_id
    group by i.film_id
    order by count(*) desc
    limit 1

);

delete from film
where film_id not in (
	select distinct film_id from inventory
    );


/*5번 미만 대여된 영화 삭제*/

-- delete from film
-- where film_id in (
-- 	select film_id from inventory
--     where inventory_id in (
-- 		select inventory_id from rental
--         group by inventory_id
--         having count(*)  < 5
-- 	)
-- );


delete from customer
where customer_id not in(
	select distinct customer_id from rental
    
);


update customer
set email ='unknown@email.com'
where create_date = (
	select min(create_date) as oldst_join_day from customer
    );
    
select customer_id,count(*) as rental_count
from rental
group by customer_id
having rental_count >= 10;


