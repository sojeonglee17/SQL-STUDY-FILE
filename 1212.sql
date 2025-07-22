-- select * from customer;
-- show columns from sakila.customer;
-- show columns from sakila.city;
-- select * from customer
-- where first_name= 'MARIA';

-- select * from customer
-- where address_id<200;

-- show columns from sakila.payment;
-- select * from payment
-- where payment_date<'2005-07-09 13:24:07' 

-- select * from customer
-- where address_id between 5 and 10;

-- select * from payment
-- where payment_date between '2005-06-17' and '2005-07-19';

-- select * from customer
-- where first_name not between 'M' and 'O';


-- select * from city
-- where city = 'Sunnyvale' and country_id =103;

-- select * from payment
-- where payment_date>'2005-06-01' and payment_date<'2005-07-05';

-- select * from customer
-- where first_name in ('MARIA','LINDA','NANCY');


-- select * from city
-- where (country_id = 103 or country_id=86)
-- and city in('Cheju','Sunnyvale','Dallas');

--  
-- show columns from sakila.address;

-- show columns from sakila.customer;
-- select *from payment;
-- select city from city;
-- select last_name,first_name from customer;
-- show columns from sakila.film_text;

-- select * from address
-- where address2 is not null;

select * from address
where address2 = ' ';

