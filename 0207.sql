-- select a.address, a.address_id,
-- 		s.address_id,s.store_id
-- from address as a
-- 	left outer join store as s on a.address_id = s.address_id;
-- -- where s.address_id is null;

-- select c.customer_id,c.first_name,c.last_name,
-- 		r.customer_id,r.rental_id
-- from customer as c
-- 	left outer join rental as r on c.customer_id=r.customer_id;
    
    
-- select f.film_id, f.title,
-- 		i.film_id,i.inventory_id
-- from film as f
-- 	left outer join inventory as i on f.film_id=i.film_id;


-- select a.address, a.address_id,
-- 	b.address_id,b.store_id
-- from address as a
-- 	right outer join store as b on a.address_id = b.address_id;

-- select b.address_id, b.store_id,
-- 		a.address_id,a.address
-- from store as b
-- 	right outer join address as a on b.address_id=a.address_id
-- where b.address_id is null;


-- select p.customer_id,p.amount,p.payment_id,
-- 		c.customer_id,c.first_name,c.last_name
-- from payment as p
-- 	left outer join customer as c on p.customer_id = c.customer_id
-- where c.customer_id is null;

-- select
-- 	a.address_id as a_address_id,
--     a.store_id,
--     b.address,
--     b.address_id as b_address_id
-- from
-- 	store as a
-- 		left outer join address as b on a.address_id = b.address_id
-- where b.address_id is null

-- union

-- select
-- 	a.address_id as a_address_id,
--     a.store_id,
--     b.address,
--     b.address_id as b_address_id
-- from
-- 	store as a
-- 		right outer join address as b on a.address_id = b.address_id
-- where a.address_id is null;


-- select
-- 	p.payment_id,p.payment_date,p.customer,
--     c.customer_id,c.first_name,c.last_name
-- from
-- 	payment as p
-- 		left outer join customer as c on p.customer_id=c.customer_id;



-- select
-- 	c.customer_id,c.first_name,c.last_name,
--     r.rental_date,r.customer_id,r.rental_id
-- from
-- 	customer as c
-- 		left outer join rental as r on c.customer_id=r.customer_id
--         
-- union

-- select
-- 	c.customer_id,c.first_name,c.last_name,
--     r.rental_date,r.customer_id,r.rental_id
-- from
-- 	customer as c
-- 		right outer join rental as r on c.customer_id=r.customer_id;


-- select
-- 	i.inventory_id,i.film_id,
--     f.film_id,f.title
-- from
-- 	inventory as i
-- 		left outer join film as f on i.film_id = f.film_id  

-- union

-- select
-- 	i.inventory_id,i.film_id,
--     f.film_id,f.title
-- from 
-- 	inventory as i
-- 		right outer join film as f on i.film_id = f.film_id;


-- select
-- 	c.customer_id,c.first_name,c.last_name,
--     r.renal_date,r.customer_id,r.rental_id
-- from
-- 	customer as c
-- 		right outer join rental as r on c.customer_id=r.customer_id
-- where c.customer_id is null;

-- select i.inventory_id,
-- 		r.inventory_id,r.rental_id,r.rental_date
-- from
-- 	inventory as i
-- 		left outer join rental as r on i.inventory_id=r.inventory_id
-- where r.inventory_id is null
--         
-- union

-- select i.inventory_id,
-- 		r.inventory_id,r.rental_id,r.rental_date
-- from
-- 	inventory as i
-- 		right outer join rental as r on i.inventory_id=r.inventory_id
-- where i.inventory_id is null;


select
	p.amount,p.payment_date,p.payment_id,p.staff_id,
    s.staff_id,s.last_name,s.first_name
from
	payment as p
		left outer join staff as s on p.staff_id = s.staff_id
where s.staff_id is null

union

select
	p.amount,p.payment_date,p.payment_id,p.staff_id,
    s.staff_id,s.last_name,s.first_name
from
	payment as p
		right outer join staff as s on p.staff_id = s.staff_id
        
where p.staff_id is null;