show columns from store;

-- select a.customer_id,a.first_name,a.last_name,
-- 		b.address_id,b.address,
--         c.city_id,c.city
-- from customer as a
-- 	inner join address as b on a.address_id=b.address_id
--     inner join city as c on b.city_id = c.city_id
-- where a.first_name='ROSA';

-- select a.first_name,a.last_name,
-- 		f.title,
--         r.rental_id,r.rental_date
-- from actor as a
-- 	inner join film_actor as fa on a.actor_id=fa.actor_id
-- 	inner join film as f on fa.film_id=f.film_id
--     inner join inventory as i on f.film_id=i.film_id
--     inner join rental as r on i.inventory_id = r.inventory_id
-- where a.first_name ='NICK'
-- 	and a.last_name ='WAHLBERG'
-- 	and r.rental_date >'2005-06-15';

-- select c.first_name,c.last_name,
-- 	s.first_name,s.last_name,
--     p.amount,
--     f.title
-- from customer as c
-- 	inner join rental as r on c.customer_id =r.customer_id
--     inner join staff as s on r.staff_id = s.staff_id
--     inner join inventory as i on r.inventory_id=i.inventory_id
--     inner join film as f on i.film_id = f.film_id
--     inner join payment as p on r.rental_id = p.rental_id
-- where c.first_name ='MARY'and c.last_name= 'SMITH'
-- 	and s.first_name= 'JONATHAN' and s.last_name='STEELE'
-- 	and p.amount >= 7.00;
--     
    
    
    
    
    
    
    