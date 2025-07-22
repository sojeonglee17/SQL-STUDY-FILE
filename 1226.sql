-- show columns from sakila.customer;

-- select address from customer
-- where address2 is not null;]

-- select * from customer
-- order by store_id desc,first_name limit 10;alter

-- select * from customer
-- order by customer_id limit 100 offset 10;

-- select * from customer
-- where first_name like 'AA%';

-- select * from customer
-- where first_name like '%A%';

-- select * from customer
-- where first_name like 'A%__';

-- select * from customer
-- where first_name like '__%R%';

-- select special_feature,rating from film
-- group by special_feature,rating;


-- select special_features, count(*) as cnt from film
-- group by special_features ;

-- select special_features,count(*) as cnt from film
-- group by special_features
-- having cnt>70;

select special_features,rating,count(*) as cnt from film
group by special_features,rating 
order by special_features,rating,cnt desc;








