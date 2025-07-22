-- select * from address
-- where address2 = ' ';

-- select * from customer
-- order by last_name desc;

-- select * from customer
-- order by store_id, first_name;-- store_id, first_name 순으로 데이터 정렬

-- select * from customer
-- order by store_id desc ,first_name limit 10;

-- select * from customer
-- order by last_name desc limit 15;

-- select * from customer
-- order by last_name limit 9,5;

-- select * from customer
-- order by store_id limit 5;

-- select * from customer
-- order by first_name desc,last_name limit 10;

-- select * from customer
-- order by store_id desc limit 4,3;

-- select * from customer
-- order by customer_id limit 10 offset 100;

-- select * from customer
-- where first_name like 'AA%';


-- select * from customer
-- where first_name like '%RA';


-- select * from customer
-- where first_name not like 'A%';


-- select * from customer
-- where first_name like 'A__';

-- select * from customer
-- where first_name like 'A___A';


-- select * from customer
-- where first_name like '_____';

-- select * from customer
-- where first_name like 'A_R%';

-- select * from customer
-- where first_name like '__R%';

-- select * from customer
-- where first_name like 'A%R_';

with cte(col_1) as (
select 'A%BC' union all
select 'A_BC' union all
select 'abc'
)

-- select * from cte;

-- select * from cte
-- where col_1 like '%';

select * from cte
where col_1 like '_#__' escape '#';