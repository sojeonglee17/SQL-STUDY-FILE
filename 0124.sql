show columns from sakila.customer;

-- select c.first_name,c.last_name,c.rental_id
-- from customer as c
-- 	inner join rental as r on c.customer_id=r.customer_id
-- where a.first_name='MARY';


-- show columns from sakila.address;

-- select c.last_name,c.first_name,a.address
-- from customer as c
-- 	inner join address as a on c.address_id=a.address_id
-- where city_id=300;


-- select f.title,r.rental_id
-- from film as f
-- 	inner join inventory as i on f.film_id=i.film_id
--     inner join rental as r on i.inventory_id=r.inventory_id
-- where f.title like '%ACADEMY%';


-- show columns from rental;

-- select c.first_name,c.last_name,r.rental_id
-- from customer as c
-- 	inner join rental as r on c.customer_id=r.customer_id
-- where c.first_name='JOHN' and r.rental_date> '2005-05-01';

-- select c.first_name,c.last_name,p.amount
-- from customer as c
-- 	inner join payment as p on c.customer_id=p.customer_id
-- where p.amount>5.00 and p.last_update > '2006-01-01';

-- show columns from sakila.address;

-- select s.first_name,s.last_name,a.address
-- from staff as s
-- 	inner join address as a on s.address_id=a.address_id
-- where a.district='California' and a.address>=10;

-- show columns from sakila.city;

-- select c.first_name,c.last_name,a.address,ci.city
-- from customer as c
-- 	inner join address as a on c.address_id=a.address_id
--     inner join city as ci on a.city_id=ci.city_id
-- where ci.city='AUSTIN';

-- select c.first_name,c.last_name,r.rental_id,f.title
-- from customer as c
-- 	inner join rental as r on c.customer_id = r.customer_id
--     inner join inventory as i on r.inventory_id =i.inventory_id
--     inner join film as f on f.film_id = i.film_id
-- where c.first_name='NANCY';

-- show columns from sakila.inventory;


select s.first_name,s.last_name,f.title,r.rental_id
from rental as r
	inner join staff as s on r.staff_id = s.staff_id
    inner join inventory as i on r.inventory_id=i.inventory_id 
    inner join film as f on i.film_id = f.film_id
where s.first_name='MIKE';










