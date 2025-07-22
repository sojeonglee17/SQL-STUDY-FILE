-- show columns from sakila.customer;

select * from customer
where first_name= 'LINDA';

select * from customer
where address_id=200;

show columns from sakila.payment;

select * from payment
where payment_date = '2005-07-09 13:24:07';

select * from customer
where address_id between 5 and 10;

select * from customer
where first_name not between 'M' and 'O';


show columns from sakila.city;

select * from city
where city= 'sunnyvale' and country_id =103;


select * from customer
where first_name in ('MARIA','LINDA','NANCY');

select * from city
where (country_id = 86 or country_id= 103) and city in ('Cheju','Sunnyvale','Dallas');


select * from address
where address2 = ' ';

select * from customer
order by store_id desc,first_name;


select * from customer
where first_name like '%A';

select * from customer
where first_name like '%RA';

select * from customer
where first_name not like 'A%';

select * from customer
where first_name like '%A%';

select * from customer
where first_name like '__A';

select * from customer
where first_name like 'A%__%A';

select * from customer
where first_name like '_____';

select * from customer
where first_name like 'A_R%';

select * from customer
where first_name like '__R%';

select * from customer
where first_name like 'A%R_';


select special_features, count(*) as cnt
from film 
group by special_features;

select special_features,rating, count(*) as cnt
from film
group by special_features,rating
order by special_features,rating , cnt desc;

select special_features,rating, count(*) as cnt
from film
group by special_features,rating
having rating ='G';


select special_features, count(*) as cnt
from film 
group by special_features
having cnt>70;

show columns from sakila.rental;

select c.first_name,c.last_name,r.rental_id
from customer c
	join rental as r on c.customer_id = r.rental_id
where first_name = 'MARY';

select c.first_name,c.last_name,r.rental_id,r.rental_date
from customer c
	left outer join rental as r on c.customer_id=r.customer_id;


select count(*) as total_rentals
from rental;

select sum(amount) as total_sales
from payment;



select avg(length) as avg_film_length
from film;

select max(length) as Max_longth,min(length) as Min_length
from film;