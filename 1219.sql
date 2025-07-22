-- select * from customer
-- order by store_id desc,first_name limit 10;

-- select * from customer
-- order by customer_id limit 10 offset 100;

-- select * from customer
-- order by first_name like 'AA%';

-- select * from customer
-- order by first_name like '%A%';

-- select * from customer
-- order by first_name like 'A__';

-- select * from customer
-- order by first_name like '__R%';

-- show columns from film;

-- select special_features
-- from film
-- group by special_features;

-- select rating
-- from film
-- group by rating;

-- select special_features,rating
-- from film
-- group by special_features,rating;

-- select special_features, count(*) as cnt
-- from film
-- group by special_features;

-- select rating, count(*) as cnt
-- from film
-- group by rating;

-- select special_features,rating, count(*) as cnt
-- from film
-- group by special_features,rating
-- order by special_features,rating,cnt desc;

-- select special_features,rating from film
-- group by special_features,rating
-- having rating='G';

-- select special_features,count(*) as cnt from film
-- group by special_features
-- having cnt > 70;

select distinct special_features,rating from film;