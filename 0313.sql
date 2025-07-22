/*Q4*/

-- with customer_join as(
-- select first_name,last_name,create_date
-- from customer
-- where year(create_date) = 2006
-- )

-- select *
-- from customer_join;

/*Q5*/

/*with 이름 as
	(select 성,이름, 3개월 이상 지난 고객
    from customer
     join rental r)
     
select *
from with 테이블 이름
where min(rental_date)*/

/*with last_rental as (
	select c.customer_id,c.first_name,c.last_name,
		max(r.rental_date) as last_rental_date
	from customer c
		left join rental r on c.customer_id = r.customer_id
	group by c.customer_id,c.first_name,c.last_name
    having last_rental_date < date_sub(curdate(),interval 3 month())
		or last_rental_date IS NULL
	)
    
    select *
    from last_rental

*/


/*WITH customer_rental_count AS
	(SELECT customer_id,
			year(rental_date) as rental_year,
            month(rental_date) as rental_month,
			count(rental_id) as rental_count
    FROM rental
    group by customer_id,rental_year,rental_month
    )
SELECT *
FROM customer_rental_count
order by rental_year,rental_month;
*/

/*select upper(first_name) as customer_name
from customer;

select lower(title)
from film;*/

/*select first_name,char_length(first_name) as customer_name
from customer;

select title
from film
where char_length(title)>=10;
*/

select concat('hello',' ','world!') as greeting;

select concat(first_name,' ',last_name) as name
from customer;

select concat(title,'(길이:',length,'분)') as film_info
from film;

select substring(first_name,1,3)
from customer;

select substring(title,-5,5)
from film;

select concat(trim(first_name),' ',trim(last_name)) as name
from customer;

select ltrim(title)
from film;
