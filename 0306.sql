-- select date_add('2025-02-10',interval 10 day) as add_days;
-- select date_sub('2025-02-28',interval 1 month) as sub_month;
-- select date_add('2025-02-28',interval 2 year) as add_year,
-- 		date_sub('2025-02-28',interval 3 year) as sub_year;
--         
-- select date_add('2025-02-10 12:30:45',interval 5 hour) as add_hours,
-- 		date_sub('2025-02-10 12:30:45',interval 15 minute) as sub_minutes,
--         date_add('2025-02-10 12:30:45',interval 30 second) as add_seconds;


-- select rental_id,rental_date,date_add(rental_date,interval 7 day) as return_due
-- from rental
-- order by rental_date,return_due;

-- select customer_id,create_date
-- from customer
-- where create_date <= date_sub(curdate(),interval 6 month);

-- select weekday('2025-03-06') as weekday_num,
-- 		dayname('2025-03-06') as weekday_name;
--         
-- select rental_id,rental_date,weekday(rental_date)
-- from rental;

-- select customer_id,create_date,dayname(create_date) as create_day
-- from customer;


-- select curdate() as today;

-- select customer_id,year(create_date)
-- from customer;

-- select rental_id,month(rental_date)
-- from rental;

-- select rental_id,rental_date
-- from rental
-- where year(rental_date) = 2006;


-- select customer_id,dayname(create_date) as day
-- from customer;

-- select dayname(rental_date) as rental_day,count(*)as rental_count
-- from rental
-- group by rental_day
-- order by rental_count desc;


select month(rental_date) as month_rental,count(*) as rental_count
from rental
group by month_rental
order by rental_count desc;

select dayname(rental_date) as dayname,count(*) as rental_count
from rental
group by dayname
order by rental_count desc
	limit 1;
-- where max(total_rental);

select rental_id,rental_date
from rental
order by rental_date desc
limit 5;
