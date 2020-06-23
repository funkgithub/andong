select last_name, salary, job_id
from   employees;

create table t_user (
user_id varchar2(20) primary key,
user_pw varchar2(128) not null,
user_name varchar2(20) not null
);

insert into t_user(user_id, user_pw, user_name)
values('next','33275a8aa48ea918bd53a9181aa975f15ab0d0645398f5918a006d08675c1cb27d5c645dbd084eee56e675e25ba4019f2ecea37ca9e2995b49fcb12c096a032e','신해철');

select * from t_user;

commit

select user_id, user_name
from   t_user
where  user_id='next' and user_pw='1113';
