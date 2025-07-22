-- select customer_id,datediff(curdate(),create_date) as day_signup
-- from customer
-- where datediff(curdate(),create_date)>=365;

-- select customer_id,create_date
-- from customer
-- where create_date<= date_sub(curdate(),interval 1 year)
-- limit 15;

-- select rental_id,customer_id,rental_date from rental
-- order by rental_date desc
-- limit 5;

-- select staff_id,max(payment_date) as recent_pay_date
-- from payment
-- group by staff_id;

-- select year(create_date) as signup_year,
-- 	count(customer_id) as customer
-- from customer
-- group by year(create_date);


-- select first_name,last_name,last_update as new_actor
-- from actor
-- order by last_update
-- limit 1;


-- select rental_id,intentory_id,rental_date
-- from rental r
-- where return_date is null -- 아직 반납되지 않은 영화는 필터링 
-- 	and rental_date <= date_sub(rental_date,interval 30 day);


-- WITH first_rental AS (
--     SELECT customer_id, MIN(rental_date) AS first_rental_date # 가장 먼저 대여한 날짜
--     FROM rental # 가장 처음 영화를 빌린 날짜 찾음
--     GROUP BY customer_id
-- ), # 이 과정은 각 고객이 처음으로 영화를 빌린 날짜를 찾는 과정

-- first_payment AS (
--     SELECT customer_id, MIN(payment_date) AS first_payment_date # 가장 먼저 결제한 날짜
--     FROM payment # 가장 처음 결제한 날짜를 찾음
--     GROUP BY customer_id
-- ) # 이 과정은 각 고객이 처음으로 결제한 날짜를 찾는 과정

-- SELECT fr.customer_id,
--        fr.first_rental_date,
--        fp.first_payment_date,
--        # 첫 대여 후 첫 결제까지 걸린 기간을 계산
--        DATEDIFF(fp.first_payment_date, fr.first_rental_date) AS days_to_first_payment
-- FROM first_rental fr
-- JOIN first_payment fp ON fr.customer_id = fp.customer_id;


select customer_ID,count(payment_date) as pay_dates
from payment
where payment_date>=date_sub(payment_date, interval 1 year)
group by customer_id
having pay_dates >=3;






