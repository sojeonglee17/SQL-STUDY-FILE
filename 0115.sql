-- select * from customer
-- where first_name in ('MARIA','LINDA','NANCY');

-- select * from city
-- where (country_id=103 or country_id=86)
-- and city in ('Cheju','Sunnyvale','Dallas');

-- select * from address
-- where address2 is not null;

-- select * from customer
-- order by store_id desc, first_name asc limit 10;

-- select * from customer
-- order by customer_id limit 10 offset 100;

-- select * from customer
-- where first_name like 'AA%';

-- select * from customer
-- where first_name like '%A%';

-- select * from customer
-- where first_name not like 'A%';

-- select * from customer
-- where first_name like '__A';

-- select * from customer
-- where first_name like 'A__A';

-- select * from customer
-- where first_name like '_____';

-- select * from customer
-- where first_name like 'A%R_';

-- select * from customer
-- where first_name like 'A_R%';

-- select rating from film
-- group by rating;

-- select special_features,rating from film
-- group by special_features,rating;

-- select special_features, count(*) as cnt from film
-- group by special_features;

-- select special_features,rating, count(*) as cnt from film
-- group by special_features,rating
-- order by special_features,rating,cnt desc;

-- select rating from film
-- group by rating
-- having rating ='G';


-- select special_features,count(*) as cnt from film
-- group by special_features
-- having cnt>70;


#테이블 생성하기
#lessonsql db(x)>생성
create database if not exists lessonsql;

/*
기본키:학생증과 같은것
각각의 데이터를 특별하게 만드는 ID카드
학생 명부에서 학생증 번호는 기본키가 될 수 있음

외래키: 친구 관계 연결
다른 테이블과 연결해 주는 다리
내가 있는 반에 친구 이름을 적는 명단이 있음
친구는 같은 반이 아닐 수도 있음.이럴때 친구 이름을 다른 반 명단과 연결 할 수 있도록 정리하는 것.


*/


/*테이블을 생성할 때 어떤 열에AUTO_INCREMENT를 적용하면 해당 열은 1씩 또는
사용자가 정의한 값 만큼 증가하며 자동으로 입력된다.
주의: AUTO_INCREMENT가 적용된 열을 생성할 때는 반드시 해당 열을 기본키로 설정
*/

#AUTO_INCREMENT로 데이터 입력
#lessonsql 선택해서 사용하기

use lessonsql;

#lesson_increment 테이블 생성
create table lesson_increment(
col_1 int auto_increment primary key,
col_2 varchar(50),
col_3 int
)
;

#lesson_increment테이블에 데이터를 추가하는 명령어

INSERT INTO lesson_increment(col_2,col_3) values('1 자동 입력',1);
insert into lesson_increment(col_2,col_3) values('2 자동 입력',2);

#자동으로 입력되는 값과 동일한 값 입력한 경우
insert into lesson_increment(col_1,col_2,col_3) values(3,'3 자동입력',3);


insert into lesson_increment(col_1,col_2,col_3) values(5,'4 건너뛰고 5 입력',5);

#다시 auto_increment가 적용된 1열을 제외하고 2,3 열에 데이터 입력
insert into lesson_increment (col_2,col_3) values ('어디까지 입력되었을까?',0);

#생성한 테이블 조회
select * from lesson_increment;

#auto_increment로 자동 생성된 마지막 값 확인하기alter
#last_insert_id() : auto_increment가 적용된 마지막 데이터를 확인 가능

select last_insert_id();

#auto_increment 시작값 변경
#이미 해당 열에 입력된 값이 있다면 그 값보다는 큰 값으로 설정
#자동으로 시작되는 값을 100부터 시작하기

alter table lesson_increment auto_increment =100;
insert into lesson_increment (col_2,col_3) values ('시작값이 변경되었을까?',0);

select * from lesson_increment;

#자동으로 증가하는 값이 1이 아닌 5씩 증가하도록 변경
set auto_increment_increment=5;
insert into lesson_increment (col_2,col_3) values ('5씩 증가할까?(1)',0);
insert into lesson_increment (col_2,col_3) values ('5씩 증가할까?(2)',0);

select * from lesson_increment;